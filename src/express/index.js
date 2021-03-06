const express = require(`express`);
const path = require(`path`);
const chalk = require(`chalk`);
const api = require(`./api`).getAPI();

const DEFAULT_PORT = 8080;
const Dir = {
  PUBLIC: `public`,
  UPLOAD: `upload`,
  TEMPLATES: `templates`
};

const mainRoutes = require(`./routes/main`)(api);
const myRoutes = require(`./routes/my`)(api);
const articlesRoutes = require(`./routes/articles`)(api);

const app = express();

app.set(`views`, path.resolve(__dirname, Dir.TEMPLATES));
app.set(`view engine`, `pug`);

app.use(express.static(path.resolve(__dirname, Dir.PUBLIC)));
app.use(express.static(path.resolve(__dirname, Dir.UPLOAD)));
app.use(`/`, mainRoutes);
app.use(`/articles`, articlesRoutes);
app.use(`/my`, myRoutes);
app.use(`*`, (req, res) => res.render(`pages/404`, {isGuest: true}));

app.listen(DEFAULT_PORT, () => {
  console.log(chalk.bgBlueBright.black(`Ожидаю соединений на ${DEFAULT_PORT}`));
});
