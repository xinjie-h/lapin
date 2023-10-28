1. add routing：
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
  2) create 'views/tools/xxtea.vue' file to complete GUI stuffs.
  3）create api/tool.js
  import request from '@/utils/request'

  export function queryToolXxtea(queryData) {
    return request({
    url: '/openservice/tool/xxtea',
    method: 'post',
    data: queryData   
    })
  }
  4) use API
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
a. configure Taobao mirror
npm install --registry=https://registry.npm.taobao.org for once
npm config set registry https://registry.npm.taobao.org forever
check successfull or not.
npm config get registry
npm info express
restore the repo
npm config set registry https://registry.npmjs.org/
b. change to Taobao mirror &cnpm
npm install -g cnpm --registry=https://registry.npm.taobao.org
c, execute
git ls-remote -h -t https://github.com.cnpmjs.org/nhn/raphael.git

