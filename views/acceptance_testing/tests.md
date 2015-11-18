## Acceptance Tests

Describe user interaction with the application.

```
visit lessons_path
click_on "#show-tags"
expect(page).to have_content("javascript")
```
