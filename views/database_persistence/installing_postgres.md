## Installing Postgres on OSX

1. Download from postgresapp.com
2. Move to your `/Applications` folder
3. Open `/Applications/Postgres`: Click the elephant icon → Preferences → Check "Start Postgres automatically after login".
4. Add the following line to the end of your `~/.bashrc` or `~/.zshrc`

```
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin
```

5. Restart your terminal
6. Test your installation. From the terminal:

```
$ psql

psql (9.4.1)
Type "help" for help.

your-username=#
```

7. Type `\q` to exit `psql`
