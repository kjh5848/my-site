const path = require('path');

module.exports = {
    mode: 'production', // 또는 'development'
    entry: './src/main/resources/static/js/main.js', // 엔트리 파일
    output: {
        filename: 'bundle.js', // 번들 파일 이름
        path: path.resolve(__dirname, 'src/main/resources/static/dist'), // 번들 파일 경로
    },
    module: {
        rules: [
            {
                test: /\.js$/, // JavaScript 파일 규칙
                exclude: /node_modules/, // node_modules 제외
                use: {
                    loader: 'babel-loader', // Babel 로더 사용
                    options: {
                        presets: ['@babel/preset-env'], // 최신 JavaScript 문법 사용
                    },
                },
            },
        ],
    },
};
