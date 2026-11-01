use std::path::PathBuf;

const FILE: &str = "whis-beats.log";

/// The file the running WHIS BEATS appends its log to, `whis-beats.log` under the platform's
/// state folder, or the cache folder where the platform has none. `None` when neither is known.
pub fn log_file() -> Option<PathBuf> {
    let root = dirs::state_dir().or_else(dirs::cache_dir)?;

    Some(root.join("whis-beats").join(FILE))
}
