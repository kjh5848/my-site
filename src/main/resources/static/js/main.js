// require.context를 사용하여 모든 .js 파일을 자동으로 포함
const context = require.context('./', true, /\.js$/);

// 모든 .js 파일을 import
context.keys().forEach(context);
