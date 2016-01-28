<div class="am-cf admin-main">
  <!-- sidebar start -->
  <div class="admin-sidebar am-offcanvas me-sidebar" id="admin-offcanvas">
    <div class="am-offcanvas-bar admin-offcanvas-bar">
      <ul class="am-tree" id="firstTree">
        <li class="am-tree-branch am-hide" data-template="treebranch">
          <div class="am-tree-branch-header">
            <button class="am-tree-branch-name">
              <span class="am-tree-icon am-tree-icon-folder"></span>
              <span class="am-tree-label"></span>
            </button>
          </div>
          <ul class="am-tree-branch-children"></ul>
          <div class="am-tree-loader"><span class="am-icon-spin am-icon-spinner"></span></div>
        </li>
        <li class="am-tree-item am-hide" data-template="treeitem">
          <button class="am-tree-item-name">
            <span class="am-tree-icon am-tree-icon-item"></span>
            <span class="am-tree-label"></span>
          </button>
        </li>
      </ul>


      <div class="am-panel am-panel-default admin-sidebar-panel">
        <div class="am-panel-bd">
          <p><span class="am-icon-tag"></span> wiki</p>
          <p>Welcome to the TinMongo wiki!</p>
        </div>
      </div>
    </div>
  </div>

  <!-- sidebar end -->

  <script src="/js/jquery.min.js"></script>
<script src="/js/amazeui.min.js"></script>
<script src="/js/amazeui.tree.min.js"></script>
<script src="/js/app.js"></script>
<script>
  // demo 1
  var data = [
    {
      title: '苹果公司',
      type: 'folder',
      products: [
        {
          title: '<a href=\"#\">iPhone</a>',
          type: 'item'
        },
        {
          title: 'iMac',
          type: 'item'
        },
        {
          title: 'MacBook Pro',
          type: 'item'
        },
        {
          title: '<a href=\"#\">新建</a>',
          type: 'item',
          attr: {
            icon:'am-icon-plus'
          }
        },
      ]
    },
    {
      title: '微软公司',
      type: 'folder',
      products: []
    },
    {
      title: 'GitHub',
      type: 'folder',
      products: []
    }
  ];

  $('#firstTree').tree({
    dataSource: function(options, callback) {
      // 模拟异步加载
      setTimeout(function() {
        callback({data: options.products || data});
      }, 400);
    },
    folderIcon:'database',
    itemIcon:'table',
    multiSelect: false,
    cacheItems: true,
    folderSelect: false
  });
</script>