(defun cj/replace-theme (theme)
  "Combine `disable-theme' and `load-theme'"
  (interactive (list
                (intern
                 (completing-read "Replace with theme: "
                                  (mapcar 'symbol-name
                                          (custom-available-themes))))))
  (let ((to-remove (copy-list custom-enabled-themes)))
    (load-theme theme)
    (map () 'disable-theme to-remove)))
