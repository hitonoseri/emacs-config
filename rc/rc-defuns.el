(setq config-dir (file-name-directory
                  (or (buffer-file-name) load-file-name)))

(defmacro load-config (filename)
  `(load (concat config-dir ,filename)))
