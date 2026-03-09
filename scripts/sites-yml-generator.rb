#!/usr/bin/env ruby
# Parses all *.md files in _site_listings/ and outputs a combined sites.yml.

LISTINGS_DIR = "_site_listings"
OUTPUT_FILE  = "_data/sites.yml"

def parse_frontmatter(filepath)
  content = File.read(filepath, encoding: "utf-8")
  blocks = content.scan(/---\s*\n(.*?)\n---/m)

  meta = {}
  blocks.each do |block,|
    block.strip.each_line do |line|
      key, value = line.strip.split(":", 2)
      meta[key.strip] = value.strip if key && value
    end
  end

  meta
end

def format_entry(meta)
  lines = []
  lines << "- domain: #{meta["pageurl"]}"
  lines << "  size: #{meta["size"]}"           if meta["size"]
  lines << "  http: true"                       if meta["http"]  == "true"
  lines << "  hof: true"                        if meta["hof"]   == "true"
  lines.join("\n")
end

files = Dir.glob(File.join(LISTINGS_DIR, "*.md")).sort

abort "No .md files found in '#{LISTINGS_DIR}/'" if files.empty?

entries = files.filter_map do |filepath|
  meta = parse_frontmatter(filepath)
  if meta.empty?
    warn "Warning: no frontmatter found in #{filepath}"
    nil
  else
    format_entry(meta)
  end
end

File.write(OUTPUT_FILE, entries.join("\n\n") + "\n")
puts "Written #{entries.size} entries to #{OUTPUT_FILE}"