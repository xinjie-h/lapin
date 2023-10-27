1、添加路由：
  1）vueelement/src/router/modules/tools.js
    {
      path: 'xxtea',
      component: () => import('@/views/tools/xxtea'),
      name: 'xxteaTool',
      meta: {
        title: 'xxtea',
        noCache: true
      }
    },
  2) 创建views/tools/xxtea.vue文件
    完成界面设计
  3）创建api/tool.js
  import request from '@/utils/request'

  export function queryToolXxtea(queryData) {
    return request({
    url: '/openservice/tool/xxtea',
    method: 'post',
    data: queryData   
    })
  }
  4) 使用API
  import { queryToolXxtea } from '@/api/tool'

    handleFineData(isEncrypt) {
      var queryData = {
        isEncrypt: isEncrypt,
        encryptKey: encryptKey,
        text = text
      }
      queryAdxServer(queryData).then(response => {
        this.finedText = response.data
      })
    }

2、vue
a,配置淘宝镜像
npm install --registry=https://registry.npm.taobao.org 单次使用
npm config set registry https://registry.npm.taobao.org 永远使用
检验是否成功
npm config get registry
npm info express
还原仓库
npm config set registry https://registry.npmjs.org/
b,更换成淘宝镜像及cnpm
npm install -g cnpm --registry=https://registry.npm.taobao.org
c, 执行
git ls-remote -h -t https://github.com.cnpmjs.org/nhn/raphael.git

