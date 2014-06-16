  


<!DOCTYPE html>
<html>
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# githubog: http://ogp.me/ns/fb/githubog#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>fuzzy-el/fuzzy.el at master · auto-complete/fuzzy-el · GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png" />
    <link rel="logo" type="image/svg" href="http://github-media-downloads.s3.amazonaws.com/github-logo.svg" />
    <link rel="xhr-socket" href="/_sockets" />


    <meta name="msapplication-TileImage" content="/windows-tile.png" />
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="selected-link" value="repo_source" data-pjax-transient />
    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="github" name="octolytics-app-id" />

    
    
    <link rel="icon" type="image/x-icon" href="/favicon.ico" />

    <meta content="authenticity_token" name="csrf-param" />
<meta content="c3ysJmvDc/0AZ29FCc7ijD2KhCYknQEQFkdQ2zrgipI=" name="csrf-token" />

    <link href="https://a248.e.akamai.net/assets.github.com/assets/github-d63f89e307e2e357d3b7160b3cd4020463f9bbc1.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://a248.e.akamai.net/assets.github.com/assets/github2-883c2d036f95a0fb486a5d977a84cb0b91a58353.css" media="all" rel="stylesheet" type="text/css" />
    


      <script src="https://a248.e.akamai.net/assets.github.com/assets/frameworks-92d138f450f2960501e28397a2f63b0f100590f0.js" type="text/javascript"></script>
      <script src="https://a248.e.akamai.net/assets.github.com/assets/github-9514cee43c62b106e5ca1f5cf2107a0c1fad9381.js" type="text/javascript"></script>
      
      <meta http-equiv="x-pjax-version" content="69eecf449c3b66a1c0a67e6f1032684b">

        <link data-pjax-transient rel='permalink' href='/auto-complete/fuzzy-el/blob/b47d801d4e1ff67323eda4d602e78c31fbc5a08a/fuzzy.el'>
    <meta property="og:title" content="fuzzy-el"/>
    <meta property="og:type" content="githubog:gitrepository"/>
    <meta property="og:url" content="https://github.com/auto-complete/fuzzy-el"/>
    <meta property="og:image" content="https://secure.gravatar.com/avatar/713dc6a465564e2686e0771619b9d476?s=420&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png"/>
    <meta property="og:site_name" content="GitHub"/>
    <meta property="og:description" content="fuzzy-el - Fuzzy matching utilities for GNU Emacs"/>
    <meta property="twitter:card" content="summary"/>
    <meta property="twitter:site" content="@GitHub">
    <meta property="twitter:title" content="auto-complete/fuzzy-el"/>

    <meta name="description" content="fuzzy-el - Fuzzy matching utilities for GNU Emacs" />


    <meta content="2239511" name="octolytics-dimension-user_id" /><meta content="1854062" name="octolytics-dimension-repository_id" />
  <link href="https://github.com/auto-complete/fuzzy-el/commits/master.atom" rel="alternate" title="Recent Commits to fuzzy-el:master" type="application/atom+xml" />

  </head>


  <body class="logged_out page-blob linux vis-public env-production  ">
    <div id="wrapper">

      

      
      
      

      
      <div class="header header-logged-out">
  <div class="container clearfix">

    <a class="header-logo-wordmark" href="https://github.com/">Github</a>

    <div class="header-actions">
      <a class="button primary" href="https://github.com/signup">Sign up</a>
      <a class="button" href="https://github.com/login?return_to=%2Fauto-complete%2Ffuzzy-el%2Fblob%2Fmaster%2Ffuzzy.el">Sign in</a>
    </div>

    <div class="command-bar js-command-bar  in-repository">


      <ul class="top-nav">
          <li class="explore"><a href="https://github.com/explore">Explore</a></li>
        <li class="features"><a href="https://github.com/features">Features</a></li>
          <li class="blog"><a href="https://github.com/blog">Blog</a></li>
      </ul>
        <form accept-charset="UTF-8" action="/search" class="command-bar-form" id="top_search_form" method="get">
  <a href="/search/advanced" class="advanced-search-icon tooltipped downwards command-bar-search" id="advanced_search" title="Advanced search"><span class="octicon octicon-gear "></span></a>

  <input type="text" data-hotkey="/ s" name="q" id="js-command-bar-field" placeholder="Search or type a command" tabindex="1" autocapitalize="off"
    
      data-repo="auto-complete/fuzzy-el"
      data-branch="master"
      data-sha="2de854cc6aabd427355dc7d29ef3f2c5a8ee0d5c"
  >

    <input type="hidden" name="nwo" value="auto-complete/fuzzy-el" />

    <div class="select-menu js-menu-container js-select-menu search-context-select-menu">
      <span class="minibutton select-menu-button js-menu-target">
        <span class="js-select-button">This repository</span>
      </span>

      <div class="select-menu-modal-holder js-menu-content js-navigation-container">
        <div class="select-menu-modal">

          <div class="select-menu-item js-navigation-item selected">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" class="js-search-this-repository" name="search_target" value="repository" checked="checked" />
            <div class="select-menu-item-text js-select-button-text">This repository</div>
          </div> <!-- /.select-menu-item -->

          <div class="select-menu-item js-navigation-item">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" name="search_target" value="global" />
            <div class="select-menu-item-text js-select-button-text">All repositories</div>
          </div> <!-- /.select-menu-item -->

        </div>
      </div>
    </div>

  <span class="octicon help tooltipped downwards" title="Show command bar help">
    <span class="octicon octicon-question"></span>
  </span>


  <input type="hidden" name="ref" value="cmdform">

  <div class="divider-vertical"></div>

</form>
    </div>

  </div>
</div>


      

      


            <div class="site hfeed" itemscope itemtype="http://schema.org/WebPage">
      <div class="hentry">
        
        <div class="pagehead repohead instapaper_ignore readability-menu ">
          <div class="container">
            <div class="title-actions-bar">
              

<ul class="pagehead-actions">



    <li>
      <a href="/login?return_to=%2Fauto-complete%2Ffuzzy-el"
        class="minibutton js-toggler-target star-button entice tooltipped upwards"
        title="You must be signed in to use this feature" rel="nofollow">
        <span class="octicon octicon-star"></span>Star
      </a>
      <a class="social-count js-social-count" href="/auto-complete/fuzzy-el/stargazers">
        19
      </a>
    </li>
    <li>
      <a href="/login?return_to=%2Fauto-complete%2Ffuzzy-el"
        class="minibutton js-toggler-target fork-button entice tooltipped upwards"
        title="You must be signed in to fork a repository" rel="nofollow">
        <span class="octicon octicon-git-branch"></span>Fork
      </a>
      <a href="/auto-complete/fuzzy-el/network" class="social-count">
        7
      </a>
    </li>
</ul>

              <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
                <span class="repo-label"><span>public</span></span>
                <span class="mega-octicon octicon-repo"></span>
                <span class="author vcard">
                  <a href="/auto-complete" class="url fn" itemprop="url" rel="author">
                  <span itemprop="title">auto-complete</span>
                  </a></span> /
                <strong><a href="/auto-complete/fuzzy-el" class="js-current-repository">fuzzy-el</a></strong>
              </h1>
            </div>

            
  <ul class="tabs">
    <li class="pulse-nav"><a href="/auto-complete/fuzzy-el/pulse" class="js-selected-navigation-item " data-selected-links="pulse /auto-complete/fuzzy-el/pulse" rel="nofollow"><span class="octicon octicon-pulse"></span></a></li>
    <li><a href="/auto-complete/fuzzy-el" class="js-selected-navigation-item selected" data-selected-links="repo_source repo_downloads repo_commits repo_tags repo_branches /auto-complete/fuzzy-el">Code</a></li>
    <li><a href="/auto-complete/fuzzy-el/network" class="js-selected-navigation-item " data-selected-links="repo_network /auto-complete/fuzzy-el/network">Network</a></li>
    <li><a href="/auto-complete/fuzzy-el/pulls" class="js-selected-navigation-item " data-selected-links="repo_pulls /auto-complete/fuzzy-el/pulls">Pull Requests <span class='counter'>0</span></a></li>

      <li><a href="/auto-complete/fuzzy-el/issues" class="js-selected-navigation-item " data-selected-links="repo_issues /auto-complete/fuzzy-el/issues">Issues <span class='counter'>4</span></a></li>



    <li><a href="/auto-complete/fuzzy-el/graphs" class="js-selected-navigation-item " data-selected-links="repo_graphs repo_contributors /auto-complete/fuzzy-el/graphs">Graphs</a></li>


  </ul>
  
<div class="tabnav">

  <span class="tabnav-right">
    <ul class="tabnav-tabs">
          <li><a href="/auto-complete/fuzzy-el/tags" class="js-selected-navigation-item tabnav-tab" data-selected-links="repo_tags /auto-complete/fuzzy-el/tags">Tags <span class="counter ">1</span></a></li>
    </ul>
  </span>

  <div class="tabnav-widget scope">


    <div class="select-menu js-menu-container js-select-menu js-branch-menu">
      <a class="minibutton select-menu-button js-menu-target" data-hotkey="w" data-ref="master">
        <span class="octicon octicon-branch"></span>
        <i>branch:</i>
        <span class="js-select-button">master</span>
      </a>

      <div class="select-menu-modal-holder js-menu-content js-navigation-container">

        <div class="select-menu-modal">
          <div class="select-menu-header">
            <span class="select-menu-title">Switch branches/tags</span>
            <span class="octicon octicon-remove-close js-menu-close"></span>
          </div> <!-- /.select-menu-header -->

          <div class="select-menu-filters">
            <div class="select-menu-text-filter">
              <input type="text" id="commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
            </div>
            <div class="select-menu-tabs">
              <ul>
                <li class="select-menu-tab">
                  <a href="#" data-tab-filter="branches" class="js-select-menu-tab">Branches</a>
                </li>
                <li class="select-menu-tab">
                  <a href="#" data-tab-filter="tags" class="js-select-menu-tab">Tags</a>
                </li>
              </ul>
            </div><!-- /.select-menu-tabs -->
          </div><!-- /.select-menu-filters -->

          <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket css-truncate" data-tab-filter="branches">

            <div data-filterable-for="commitish-filter-field" data-filterable-type="substring">

                <div class="select-menu-item js-navigation-item selected">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/auto-complete/fuzzy-el/blob/master/fuzzy.el" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="master" rel="nofollow" title="master">master</a>
                </div> <!-- /.select-menu-item -->
            </div>

              <div class="select-menu-no-results">Nothing to show</div>
          </div> <!-- /.select-menu-list -->


          <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket css-truncate" data-tab-filter="tags">
            <div data-filterable-for="commitish-filter-field" data-filterable-type="substring">

                <div class="select-menu-item js-navigation-item ">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <a href="/auto-complete/fuzzy-el/blob/v0.1/fuzzy.el" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.1" rel="nofollow" title="v0.1">v0.1</a>
                </div> <!-- /.select-menu-item -->
            </div>

            <div class="select-menu-no-results">Nothing to show</div>

          </div> <!-- /.select-menu-list -->

        </div> <!-- /.select-menu-modal -->
      </div> <!-- /.select-menu-modal-holder -->
    </div> <!-- /.select-menu -->

  </div> <!-- /.scope -->

  <ul class="tabnav-tabs">
    <li><a href="/auto-complete/fuzzy-el" class="selected js-selected-navigation-item tabnav-tab" data-selected-links="repo_source /auto-complete/fuzzy-el">Files</a></li>
    <li><a href="/auto-complete/fuzzy-el/commits/master" class="js-selected-navigation-item tabnav-tab" data-selected-links="repo_commits /auto-complete/fuzzy-el/commits/master">Commits</a></li>
    <li><a href="/auto-complete/fuzzy-el/branches" class="js-selected-navigation-item tabnav-tab" data-selected-links="repo_branches /auto-complete/fuzzy-el/branches" rel="nofollow">Branches <span class="counter ">1</span></a></li>
  </ul>

</div>

  
  
  


            
          </div>
        </div><!-- /.repohead -->

        <div id="js-repo-pjax-container" class="container context-loader-container" data-pjax-container>
          


<!-- blob contrib key: blob_contributors:v21:4f1aaeb29d9d20e7e42046c2adaaadaf -->
<!-- blob contrib frag key: views10/v8/blob_contributors:v21:4f1aaeb29d9d20e7e42046c2adaaadaf -->


<div id="slider">
    <div class="frame-meta">

      <p title="This is a placeholder element" class="js-history-link-replace hidden"></p>

        <div class="breadcrumb">
          <span class='bold'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/auto-complete/fuzzy-el" class="js-slide-to" data-branch="master" data-direction="back" itemscope="url"><span itemprop="title">fuzzy-el</span></a></span></span><span class="separator"> / </span><strong class="final-path">fuzzy.el</strong> <span class="js-zeroclipboard zeroclipboard-button" data-clipboard-text="fuzzy.el" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
        </div>

      <a href="/auto-complete/fuzzy-el/find/master" class="js-slide-to" data-hotkey="t" style="display:none">Show File Finder</a>


        
  <div class="commit file-history-tease">
    <img class="main-avatar" height="24" src="https://secure.gravatar.com/avatar/eefd3c9c9d51b3116119a5cb814ce1a1?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
    <span class="author"><a href="/m2ym" rel="author">m2ym</a></span>
    <time class="js-relative-date" datetime="2012-03-22T18:44:36-07:00" title="2012-03-22 18:44:36">March 22, 2012</time>
    <div class="commit-title">
        <a href="/auto-complete/fuzzy-el/commit/b47d801d4e1ff67323eda4d602e78c31fbc5a08a" class="message">Fixed undefined function.</a>
    </div>

    <div class="participation">
      <p class="quickstat"><a href="#blob_contributors_box" rel="facebox"><strong>1</strong> contributor</a></p>
      
    </div>
    <div id="blob_contributors_box" style="display:none">
      <h2>Users on GitHub who have contributed to this file</h2>
      <ul class="facebox-user-list">
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/eefd3c9c9d51b3116119a5cb814ce1a1?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/m2ym">m2ym</a>
        </li>
      </ul>
    </div>
  </div>


    </div><!-- ./.frame-meta -->

    <div class="frames">
      <div class="frame" data-permalink-url="/auto-complete/fuzzy-el/blob/b47d801d4e1ff67323eda4d602e78c31fbc5a08a/fuzzy.el" data-title="fuzzy-el/fuzzy.el at master · auto-complete/fuzzy-el · GitHub" data-type="blob">

        <div id="files" class="bubble">
          <div class="file">
            <div class="meta">
              <div class="info">
                <span class="icon"><b class="octicon octicon-file-text"></b></span>
                <span class="mode" title="File Mode">file</span>
                  <span>390 lines (323 sloc)</span>
                <span>12.932 kb</span>
              </div>
              <div class="actions">
                <div class="button-group">
                      <a class="minibutton js-entice" href=""
                         data-entice="You must be signed in and on a branch to make or propose changes">Edit</a>
                  <a href="/auto-complete/fuzzy-el/raw/master/fuzzy.el" class="button minibutton " id="raw-url">Raw</a>
                    <a href="/auto-complete/fuzzy-el/blame/master/fuzzy.el" class="button minibutton ">Blame</a>
                  <a href="/auto-complete/fuzzy-el/commits/master/fuzzy.el" class="button minibutton " rel="nofollow">History</a>
                </div><!-- /.button-group -->
              </div><!-- /.actions -->

            </div>
                <div class="blob-wrapper data type-emacs-lisp js-blob-data">
      <table class="file-code file-diff">
        <tr class="file-code-line">
          <td class="blob-line-nums">
            <span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>
<span id="L4" rel="#L4">4</span>
<span id="L5" rel="#L5">5</span>
<span id="L6" rel="#L6">6</span>
<span id="L7" rel="#L7">7</span>
<span id="L8" rel="#L8">8</span>
<span id="L9" rel="#L9">9</span>
<span id="L10" rel="#L10">10</span>
<span id="L11" rel="#L11">11</span>
<span id="L12" rel="#L12">12</span>
<span id="L13" rel="#L13">13</span>
<span id="L14" rel="#L14">14</span>
<span id="L15" rel="#L15">15</span>
<span id="L16" rel="#L16">16</span>
<span id="L17" rel="#L17">17</span>
<span id="L18" rel="#L18">18</span>
<span id="L19" rel="#L19">19</span>
<span id="L20" rel="#L20">20</span>
<span id="L21" rel="#L21">21</span>
<span id="L22" rel="#L22">22</span>
<span id="L23" rel="#L23">23</span>
<span id="L24" rel="#L24">24</span>
<span id="L25" rel="#L25">25</span>
<span id="L26" rel="#L26">26</span>
<span id="L27" rel="#L27">27</span>
<span id="L28" rel="#L28">28</span>
<span id="L29" rel="#L29">29</span>
<span id="L30" rel="#L30">30</span>
<span id="L31" rel="#L31">31</span>
<span id="L32" rel="#L32">32</span>
<span id="L33" rel="#L33">33</span>
<span id="L34" rel="#L34">34</span>
<span id="L35" rel="#L35">35</span>
<span id="L36" rel="#L36">36</span>
<span id="L37" rel="#L37">37</span>
<span id="L38" rel="#L38">38</span>
<span id="L39" rel="#L39">39</span>
<span id="L40" rel="#L40">40</span>
<span id="L41" rel="#L41">41</span>
<span id="L42" rel="#L42">42</span>
<span id="L43" rel="#L43">43</span>
<span id="L44" rel="#L44">44</span>
<span id="L45" rel="#L45">45</span>
<span id="L46" rel="#L46">46</span>
<span id="L47" rel="#L47">47</span>
<span id="L48" rel="#L48">48</span>
<span id="L49" rel="#L49">49</span>
<span id="L50" rel="#L50">50</span>
<span id="L51" rel="#L51">51</span>
<span id="L52" rel="#L52">52</span>
<span id="L53" rel="#L53">53</span>
<span id="L54" rel="#L54">54</span>
<span id="L55" rel="#L55">55</span>
<span id="L56" rel="#L56">56</span>
<span id="L57" rel="#L57">57</span>
<span id="L58" rel="#L58">58</span>
<span id="L59" rel="#L59">59</span>
<span id="L60" rel="#L60">60</span>
<span id="L61" rel="#L61">61</span>
<span id="L62" rel="#L62">62</span>
<span id="L63" rel="#L63">63</span>
<span id="L64" rel="#L64">64</span>
<span id="L65" rel="#L65">65</span>
<span id="L66" rel="#L66">66</span>
<span id="L67" rel="#L67">67</span>
<span id="L68" rel="#L68">68</span>
<span id="L69" rel="#L69">69</span>
<span id="L70" rel="#L70">70</span>
<span id="L71" rel="#L71">71</span>
<span id="L72" rel="#L72">72</span>
<span id="L73" rel="#L73">73</span>
<span id="L74" rel="#L74">74</span>
<span id="L75" rel="#L75">75</span>
<span id="L76" rel="#L76">76</span>
<span id="L77" rel="#L77">77</span>
<span id="L78" rel="#L78">78</span>
<span id="L79" rel="#L79">79</span>
<span id="L80" rel="#L80">80</span>
<span id="L81" rel="#L81">81</span>
<span id="L82" rel="#L82">82</span>
<span id="L83" rel="#L83">83</span>
<span id="L84" rel="#L84">84</span>
<span id="L85" rel="#L85">85</span>
<span id="L86" rel="#L86">86</span>
<span id="L87" rel="#L87">87</span>
<span id="L88" rel="#L88">88</span>
<span id="L89" rel="#L89">89</span>
<span id="L90" rel="#L90">90</span>
<span id="L91" rel="#L91">91</span>
<span id="L92" rel="#L92">92</span>
<span id="L93" rel="#L93">93</span>
<span id="L94" rel="#L94">94</span>
<span id="L95" rel="#L95">95</span>
<span id="L96" rel="#L96">96</span>
<span id="L97" rel="#L97">97</span>
<span id="L98" rel="#L98">98</span>
<span id="L99" rel="#L99">99</span>
<span id="L100" rel="#L100">100</span>
<span id="L101" rel="#L101">101</span>
<span id="L102" rel="#L102">102</span>
<span id="L103" rel="#L103">103</span>
<span id="L104" rel="#L104">104</span>
<span id="L105" rel="#L105">105</span>
<span id="L106" rel="#L106">106</span>
<span id="L107" rel="#L107">107</span>
<span id="L108" rel="#L108">108</span>
<span id="L109" rel="#L109">109</span>
<span id="L110" rel="#L110">110</span>
<span id="L111" rel="#L111">111</span>
<span id="L112" rel="#L112">112</span>
<span id="L113" rel="#L113">113</span>
<span id="L114" rel="#L114">114</span>
<span id="L115" rel="#L115">115</span>
<span id="L116" rel="#L116">116</span>
<span id="L117" rel="#L117">117</span>
<span id="L118" rel="#L118">118</span>
<span id="L119" rel="#L119">119</span>
<span id="L120" rel="#L120">120</span>
<span id="L121" rel="#L121">121</span>
<span id="L122" rel="#L122">122</span>
<span id="L123" rel="#L123">123</span>
<span id="L124" rel="#L124">124</span>
<span id="L125" rel="#L125">125</span>
<span id="L126" rel="#L126">126</span>
<span id="L127" rel="#L127">127</span>
<span id="L128" rel="#L128">128</span>
<span id="L129" rel="#L129">129</span>
<span id="L130" rel="#L130">130</span>
<span id="L131" rel="#L131">131</span>
<span id="L132" rel="#L132">132</span>
<span id="L133" rel="#L133">133</span>
<span id="L134" rel="#L134">134</span>
<span id="L135" rel="#L135">135</span>
<span id="L136" rel="#L136">136</span>
<span id="L137" rel="#L137">137</span>
<span id="L138" rel="#L138">138</span>
<span id="L139" rel="#L139">139</span>
<span id="L140" rel="#L140">140</span>
<span id="L141" rel="#L141">141</span>
<span id="L142" rel="#L142">142</span>
<span id="L143" rel="#L143">143</span>
<span id="L144" rel="#L144">144</span>
<span id="L145" rel="#L145">145</span>
<span id="L146" rel="#L146">146</span>
<span id="L147" rel="#L147">147</span>
<span id="L148" rel="#L148">148</span>
<span id="L149" rel="#L149">149</span>
<span id="L150" rel="#L150">150</span>
<span id="L151" rel="#L151">151</span>
<span id="L152" rel="#L152">152</span>
<span id="L153" rel="#L153">153</span>
<span id="L154" rel="#L154">154</span>
<span id="L155" rel="#L155">155</span>
<span id="L156" rel="#L156">156</span>
<span id="L157" rel="#L157">157</span>
<span id="L158" rel="#L158">158</span>
<span id="L159" rel="#L159">159</span>
<span id="L160" rel="#L160">160</span>
<span id="L161" rel="#L161">161</span>
<span id="L162" rel="#L162">162</span>
<span id="L163" rel="#L163">163</span>
<span id="L164" rel="#L164">164</span>
<span id="L165" rel="#L165">165</span>
<span id="L166" rel="#L166">166</span>
<span id="L167" rel="#L167">167</span>
<span id="L168" rel="#L168">168</span>
<span id="L169" rel="#L169">169</span>
<span id="L170" rel="#L170">170</span>
<span id="L171" rel="#L171">171</span>
<span id="L172" rel="#L172">172</span>
<span id="L173" rel="#L173">173</span>
<span id="L174" rel="#L174">174</span>
<span id="L175" rel="#L175">175</span>
<span id="L176" rel="#L176">176</span>
<span id="L177" rel="#L177">177</span>
<span id="L178" rel="#L178">178</span>
<span id="L179" rel="#L179">179</span>
<span id="L180" rel="#L180">180</span>
<span id="L181" rel="#L181">181</span>
<span id="L182" rel="#L182">182</span>
<span id="L183" rel="#L183">183</span>
<span id="L184" rel="#L184">184</span>
<span id="L185" rel="#L185">185</span>
<span id="L186" rel="#L186">186</span>
<span id="L187" rel="#L187">187</span>
<span id="L188" rel="#L188">188</span>
<span id="L189" rel="#L189">189</span>
<span id="L190" rel="#L190">190</span>
<span id="L191" rel="#L191">191</span>
<span id="L192" rel="#L192">192</span>
<span id="L193" rel="#L193">193</span>
<span id="L194" rel="#L194">194</span>
<span id="L195" rel="#L195">195</span>
<span id="L196" rel="#L196">196</span>
<span id="L197" rel="#L197">197</span>
<span id="L198" rel="#L198">198</span>
<span id="L199" rel="#L199">199</span>
<span id="L200" rel="#L200">200</span>
<span id="L201" rel="#L201">201</span>
<span id="L202" rel="#L202">202</span>
<span id="L203" rel="#L203">203</span>
<span id="L204" rel="#L204">204</span>
<span id="L205" rel="#L205">205</span>
<span id="L206" rel="#L206">206</span>
<span id="L207" rel="#L207">207</span>
<span id="L208" rel="#L208">208</span>
<span id="L209" rel="#L209">209</span>
<span id="L210" rel="#L210">210</span>
<span id="L211" rel="#L211">211</span>
<span id="L212" rel="#L212">212</span>
<span id="L213" rel="#L213">213</span>
<span id="L214" rel="#L214">214</span>
<span id="L215" rel="#L215">215</span>
<span id="L216" rel="#L216">216</span>
<span id="L217" rel="#L217">217</span>
<span id="L218" rel="#L218">218</span>
<span id="L219" rel="#L219">219</span>
<span id="L220" rel="#L220">220</span>
<span id="L221" rel="#L221">221</span>
<span id="L222" rel="#L222">222</span>
<span id="L223" rel="#L223">223</span>
<span id="L224" rel="#L224">224</span>
<span id="L225" rel="#L225">225</span>
<span id="L226" rel="#L226">226</span>
<span id="L227" rel="#L227">227</span>
<span id="L228" rel="#L228">228</span>
<span id="L229" rel="#L229">229</span>
<span id="L230" rel="#L230">230</span>
<span id="L231" rel="#L231">231</span>
<span id="L232" rel="#L232">232</span>
<span id="L233" rel="#L233">233</span>
<span id="L234" rel="#L234">234</span>
<span id="L235" rel="#L235">235</span>
<span id="L236" rel="#L236">236</span>
<span id="L237" rel="#L237">237</span>
<span id="L238" rel="#L238">238</span>
<span id="L239" rel="#L239">239</span>
<span id="L240" rel="#L240">240</span>
<span id="L241" rel="#L241">241</span>
<span id="L242" rel="#L242">242</span>
<span id="L243" rel="#L243">243</span>
<span id="L244" rel="#L244">244</span>
<span id="L245" rel="#L245">245</span>
<span id="L246" rel="#L246">246</span>
<span id="L247" rel="#L247">247</span>
<span id="L248" rel="#L248">248</span>
<span id="L249" rel="#L249">249</span>
<span id="L250" rel="#L250">250</span>
<span id="L251" rel="#L251">251</span>
<span id="L252" rel="#L252">252</span>
<span id="L253" rel="#L253">253</span>
<span id="L254" rel="#L254">254</span>
<span id="L255" rel="#L255">255</span>
<span id="L256" rel="#L256">256</span>
<span id="L257" rel="#L257">257</span>
<span id="L258" rel="#L258">258</span>
<span id="L259" rel="#L259">259</span>
<span id="L260" rel="#L260">260</span>
<span id="L261" rel="#L261">261</span>
<span id="L262" rel="#L262">262</span>
<span id="L263" rel="#L263">263</span>
<span id="L264" rel="#L264">264</span>
<span id="L265" rel="#L265">265</span>
<span id="L266" rel="#L266">266</span>
<span id="L267" rel="#L267">267</span>
<span id="L268" rel="#L268">268</span>
<span id="L269" rel="#L269">269</span>
<span id="L270" rel="#L270">270</span>
<span id="L271" rel="#L271">271</span>
<span id="L272" rel="#L272">272</span>
<span id="L273" rel="#L273">273</span>
<span id="L274" rel="#L274">274</span>
<span id="L275" rel="#L275">275</span>
<span id="L276" rel="#L276">276</span>
<span id="L277" rel="#L277">277</span>
<span id="L278" rel="#L278">278</span>
<span id="L279" rel="#L279">279</span>
<span id="L280" rel="#L280">280</span>
<span id="L281" rel="#L281">281</span>
<span id="L282" rel="#L282">282</span>
<span id="L283" rel="#L283">283</span>
<span id="L284" rel="#L284">284</span>
<span id="L285" rel="#L285">285</span>
<span id="L286" rel="#L286">286</span>
<span id="L287" rel="#L287">287</span>
<span id="L288" rel="#L288">288</span>
<span id="L289" rel="#L289">289</span>
<span id="L290" rel="#L290">290</span>
<span id="L291" rel="#L291">291</span>
<span id="L292" rel="#L292">292</span>
<span id="L293" rel="#L293">293</span>
<span id="L294" rel="#L294">294</span>
<span id="L295" rel="#L295">295</span>
<span id="L296" rel="#L296">296</span>
<span id="L297" rel="#L297">297</span>
<span id="L298" rel="#L298">298</span>
<span id="L299" rel="#L299">299</span>
<span id="L300" rel="#L300">300</span>
<span id="L301" rel="#L301">301</span>
<span id="L302" rel="#L302">302</span>
<span id="L303" rel="#L303">303</span>
<span id="L304" rel="#L304">304</span>
<span id="L305" rel="#L305">305</span>
<span id="L306" rel="#L306">306</span>
<span id="L307" rel="#L307">307</span>
<span id="L308" rel="#L308">308</span>
<span id="L309" rel="#L309">309</span>
<span id="L310" rel="#L310">310</span>
<span id="L311" rel="#L311">311</span>
<span id="L312" rel="#L312">312</span>
<span id="L313" rel="#L313">313</span>
<span id="L314" rel="#L314">314</span>
<span id="L315" rel="#L315">315</span>
<span id="L316" rel="#L316">316</span>
<span id="L317" rel="#L317">317</span>
<span id="L318" rel="#L318">318</span>
<span id="L319" rel="#L319">319</span>
<span id="L320" rel="#L320">320</span>
<span id="L321" rel="#L321">321</span>
<span id="L322" rel="#L322">322</span>
<span id="L323" rel="#L323">323</span>
<span id="L324" rel="#L324">324</span>
<span id="L325" rel="#L325">325</span>
<span id="L326" rel="#L326">326</span>
<span id="L327" rel="#L327">327</span>
<span id="L328" rel="#L328">328</span>
<span id="L329" rel="#L329">329</span>
<span id="L330" rel="#L330">330</span>
<span id="L331" rel="#L331">331</span>
<span id="L332" rel="#L332">332</span>
<span id="L333" rel="#L333">333</span>
<span id="L334" rel="#L334">334</span>
<span id="L335" rel="#L335">335</span>
<span id="L336" rel="#L336">336</span>
<span id="L337" rel="#L337">337</span>
<span id="L338" rel="#L338">338</span>
<span id="L339" rel="#L339">339</span>
<span id="L340" rel="#L340">340</span>
<span id="L341" rel="#L341">341</span>
<span id="L342" rel="#L342">342</span>
<span id="L343" rel="#L343">343</span>
<span id="L344" rel="#L344">344</span>
<span id="L345" rel="#L345">345</span>
<span id="L346" rel="#L346">346</span>
<span id="L347" rel="#L347">347</span>
<span id="L348" rel="#L348">348</span>
<span id="L349" rel="#L349">349</span>
<span id="L350" rel="#L350">350</span>
<span id="L351" rel="#L351">351</span>
<span id="L352" rel="#L352">352</span>
<span id="L353" rel="#L353">353</span>
<span id="L354" rel="#L354">354</span>
<span id="L355" rel="#L355">355</span>
<span id="L356" rel="#L356">356</span>
<span id="L357" rel="#L357">357</span>
<span id="L358" rel="#L358">358</span>
<span id="L359" rel="#L359">359</span>
<span id="L360" rel="#L360">360</span>
<span id="L361" rel="#L361">361</span>
<span id="L362" rel="#L362">362</span>
<span id="L363" rel="#L363">363</span>
<span id="L364" rel="#L364">364</span>
<span id="L365" rel="#L365">365</span>
<span id="L366" rel="#L366">366</span>
<span id="L367" rel="#L367">367</span>
<span id="L368" rel="#L368">368</span>
<span id="L369" rel="#L369">369</span>
<span id="L370" rel="#L370">370</span>
<span id="L371" rel="#L371">371</span>
<span id="L372" rel="#L372">372</span>
<span id="L373" rel="#L373">373</span>
<span id="L374" rel="#L374">374</span>
<span id="L375" rel="#L375">375</span>
<span id="L376" rel="#L376">376</span>
<span id="L377" rel="#L377">377</span>
<span id="L378" rel="#L378">378</span>
<span id="L379" rel="#L379">379</span>
<span id="L380" rel="#L380">380</span>
<span id="L381" rel="#L381">381</span>
<span id="L382" rel="#L382">382</span>
<span id="L383" rel="#L383">383</span>
<span id="L384" rel="#L384">384</span>
<span id="L385" rel="#L385">385</span>
<span id="L386" rel="#L386">386</span>
<span id="L387" rel="#L387">387</span>
<span id="L388" rel="#L388">388</span>
<span id="L389" rel="#L389">389</span>

          </td>
          <td class="blob-line-code">
                  <div class="highlight"><pre><div class='line' id='LC1'><span class="c1">;;; fuzzy.el --- Fuzzy Matching</span></div><div class='line' id='LC2'><br/></div><div class='line' id='LC3'><span class="c1">;; Copyright (C) 2010, 2011, 2012  Tomohiro Matsuyama</span></div><div class='line' id='LC4'><br/></div><div class='line' id='LC5'><span class="c1">;; Author: Tomohiro Matsuyama &lt;tomo@cx4a.org&gt;</span></div><div class='line' id='LC6'><span class="c1">;; Keywords: convenience</span></div><div class='line' id='LC7'><span class="c1">;; Version: 0.2</span></div><div class='line' id='LC8'><br/></div><div class='line' id='LC9'><span class="c1">;; This program is free software; you can redistribute it and/or modify</span></div><div class='line' id='LC10'><span class="c1">;; it under the terms of the GNU General Public License as published by</span></div><div class='line' id='LC11'><span class="c1">;; the Free Software Foundation, either version 3 of the License, or</span></div><div class='line' id='LC12'><span class="c1">;; (at your option) any later version.</span></div><div class='line' id='LC13'><br/></div><div class='line' id='LC14'><span class="c1">;; This program is distributed in the hope that it will be useful,</span></div><div class='line' id='LC15'><span class="c1">;; but WITHOUT ANY WARRANTY; without even the implied warranty of</span></div><div class='line' id='LC16'><span class="c1">;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the</span></div><div class='line' id='LC17'><span class="c1">;; GNU General Public License for more details.</span></div><div class='line' id='LC18'><br/></div><div class='line' id='LC19'><span class="c1">;; You should have received a copy of the GNU General Public License</span></div><div class='line' id='LC20'><span class="c1">;; along with this program.  If not, see &lt;http://www.gnu.org/licenses/&gt;.</span></div><div class='line' id='LC21'><br/></div><div class='line' id='LC22'><span class="c1">;;; Commentary:</span></div><div class='line' id='LC23'><br/></div><div class='line' id='LC24'><span class="c1">;; </span></div><div class='line' id='LC25'><br/></div><div class='line' id='LC26'><span class="c1">;;; Code:</span></div><div class='line' id='LC27'><br/></div><div class='line' id='LC28'><span class="p">(</span><span class="nf">require</span> <span class="ss">&#39;cl</span><span class="p">)</span></div><div class='line' id='LC29'><span class="p">(</span><span class="nf">require</span> <span class="ss">&#39;regexp-opt</span><span class="p">)</span></div><div class='line' id='LC30'><br/></div><div class='line' id='LC31'><span class="p">(</span><span class="nf">defgroup</span> <span class="nv">fuzzy</span> <span class="nv">nil</span></div><div class='line' id='LC32'>&nbsp;&nbsp;<span class="s">&quot;Fuzzy Matching&quot;</span></div><div class='line' id='LC33'>&nbsp;&nbsp;<span class="nv">:group</span> <span class="ss">&#39;convenience</span></div><div class='line' id='LC34'>&nbsp;&nbsp;<span class="nv">:prefix</span> <span class="s">&quot;fuzzy-&quot;</span><span class="p">)</span></div><div class='line' id='LC35'><br/></div><div class='line' id='LC36'><br/></div><div class='line' id='LC37'><br/></div><div class='line' id='LC38'><span class="c1">;;; Utilities</span></div><div class='line' id='LC39'><br/></div><div class='line' id='LC40'><span class="p">(</span><span class="nf">defun</span> <span class="nv">fuzzy-current-time-float</span> <span class="p">()</span></div><div class='line' id='LC41'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">time</span> <span class="p">(</span><span class="nf">current-time</span><span class="p">)))</span></div><div class='line' id='LC42'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nb">+ </span><span class="p">(</span><span class="nb">* </span><span class="p">(</span><span class="nf">float</span> <span class="p">(</span><span class="nf">first</span> <span class="nv">time</span><span class="p">))</span></div><div class='line' id='LC43'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">lsh</span> <span class="mi">2</span> <span class="mi">16</span><span class="p">))</span></div><div class='line' id='LC44'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">float</span> <span class="p">(</span><span class="nf">second</span> <span class="nv">time</span><span class="p">))</span></div><div class='line' id='LC45'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nb">/ </span><span class="p">(</span><span class="nf">float</span> <span class="p">(</span><span class="nf">third</span> <span class="nv">time</span><span class="p">))</span></div><div class='line' id='LC46'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="mi">1000000</span><span class="p">))))</span></div><div class='line' id='LC47'><br/></div><div class='line' id='LC48'><span class="p">(</span><span class="nf">defmacro*</span> <span class="nv">fuzzy-with-stopwatch</span> <span class="p">((</span><span class="nf">&amp;optional</span> <span class="p">(</span><span class="nf">elapsed-name</span> <span class="ss">&#39;elapsed</span><span class="p">))</span> <span class="nv">&amp;body</span> <span class="nv">body</span><span class="p">)</span></div><div class='line' id='LC49'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">declare</span> <span class="p">(</span><span class="nf">indent</span> <span class="mi">1</span><span class="p">))</span></div><div class='line' id='LC50'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">start</span> <span class="p">(</span><span class="nf">gensym</span> <span class="s">&quot;START&quot;</span><span class="p">)))</span></div><div class='line' id='LC51'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="o">,</span><span class="nv">start</span> <span class="p">(</span><span class="nf">fuzzy-current-time-float</span><span class="p">)))</span></div><div class='line' id='LC52'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">flet</span> <span class="p">((</span><span class="o">,</span><span class="nv">elapsed-name</span> <span class="p">()</span> <span class="p">(</span><span class="nb">- </span><span class="p">(</span><span class="nf">fuzzy-current-time-float</span><span class="p">)</span> <span class="o">,</span><span class="nv">start</span><span class="p">)))</span></div><div class='line' id='LC53'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">,@</span><span class="nv">body</span><span class="p">))))</span></div><div class='line' id='LC54'><br/></div><div class='line' id='LC55'><span class="p">(</span><span class="nf">defun*</span> <span class="nv">fuzzy-add-to-list-as-sorted</span> <span class="p">(</span><span class="nf">list-var</span> <span class="nv">value</span> <span class="nv">&amp;key</span> <span class="p">(</span><span class="nf">test</span> <span class="ss">&#39;&lt;</span><span class="p">)</span> <span class="p">(</span><span class="nf">key</span> <span class="ss">&#39;identity</span><span class="p">))</span></div><div class='line' id='LC56'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nb">list </span><span class="p">(</span><span class="nf">symbol-value</span> <span class="nv">list-var</span><span class="p">)))</span></div><div class='line' id='LC57'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="k">or </span><span class="p">(</span><span class="nf">null</span> <span class="nv">list</span><span class="p">)</span></div><div class='line' id='LC58'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">funcall</span> <span class="nv">test</span></div><div class='line' id='LC59'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">funcall</span> <span class="nv">key</span> <span class="nv">value</span><span class="p">)</span></div><div class='line' id='LC60'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">funcall</span> <span class="nv">key</span> <span class="p">(</span><span class="nb">car </span><span class="nv">list</span><span class="p">))))</span></div><div class='line' id='LC61'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">set</span> <span class="nv">list-var</span> <span class="p">(</span><span class="nb">cons </span><span class="nv">value</span> <span class="nv">list</span><span class="p">))</span></div><div class='line' id='LC62'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">while</span> <span class="p">(</span><span class="k">and </span><span class="nv">list</span></div><div class='line' id='LC63'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nb">cdr </span><span class="nv">list</span><span class="p">)</span></div><div class='line' id='LC64'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">funcall</span> <span class="nv">test</span></div><div class='line' id='LC65'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">funcall</span> <span class="nv">key</span> <span class="p">(</span><span class="nb">cadr </span><span class="nv">list</span><span class="p">))</span></div><div class='line' id='LC66'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">funcall</span> <span class="nv">key</span> <span class="nv">value</span><span class="p">)))</span></div><div class='line' id='LC67'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">list</span> <span class="p">(</span><span class="nb">cdr </span><span class="nv">list</span><span class="p">)))</span></div><div class='line' id='LC68'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">setcdr</span> <span class="nv">list</span> <span class="p">(</span><span class="nb">cons </span><span class="nv">value</span> <span class="p">(</span><span class="nb">cdr </span><span class="nv">list</span><span class="p">))))))</span></div><div class='line' id='LC69'><br/></div><div class='line' id='LC70'><span class="p">(</span><span class="nf">defmacro*</span> <span class="nv">fuzzy-with-timeout</span> <span class="p">((</span><span class="nf">timeout</span> <span class="nv">&amp;optional</span> <span class="nv">timeout-result</span> <span class="p">(</span><span class="nf">tick-name</span> <span class="ss">&#39;tick</span><span class="p">))</span> <span class="nv">&amp;body</span> <span class="nv">body</span><span class="p">)</span></div><div class='line' id='LC71'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">declare</span> <span class="p">(</span><span class="nf">indent</span> <span class="mi">1</span><span class="p">))</span></div><div class='line' id='LC72'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">elapsed</span> <span class="p">(</span><span class="nf">gensym</span> <span class="s">&quot;ELAPSED&quot;</span><span class="p">)))</span></div><div class='line' id='LC73'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="nf">catch</span> <span class="ss">&#39;timeout</span></div><div class='line' id='LC74'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">fuzzy-with-stopwatch</span> <span class="p">(</span><span class="o">,</span><span class="nv">elapsed</span><span class="p">)</span></div><div class='line' id='LC75'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">flet</span> <span class="p">((</span><span class="o">,</span><span class="nv">tick-name</span> <span class="p">()</span></div><div class='line' id='LC76'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">when</span> <span class="p">(</span><span class="k">and </span><span class="o">,</span><span class="nv">timeout</span> <span class="p">(</span><span class="nb">&lt; </span><span class="o">,</span><span class="nv">timeout</span> <span class="p">(</span><span class="o">,</span><span class="nv">elapsed</span><span class="p">)))</span></div><div class='line' id='LC77'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">throw</span> <span class="ss">&#39;timeout</span> <span class="o">,</span><span class="nv">timeout-result</span><span class="p">))))</span></div><div class='line' id='LC78'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">,@</span><span class="nv">body</span><span class="p">)))))</span></div><div class='line' id='LC79'><br/></div><div class='line' id='LC80'><span class="p">(</span><span class="nf">defun</span> <span class="nv">fuzzy-count-matches-in-string</span> <span class="p">(</span><span class="nf">regexp</span> <span class="nv">string</span> <span class="nv">&amp;optional</span> <span class="nv">start</span> <span class="nv">end</span><span class="p">)</span></div><div class='line' id='LC81'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">start</span> <span class="p">(</span><span class="k">or </span><span class="nv">start</span> <span class="mi">0</span><span class="p">)</span></div><div class='line' id='LC82'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">end</span>   <span class="p">(</span><span class="k">or </span><span class="nv">end</span> <span class="p">(</span><span class="nb">length </span><span class="nv">string</span><span class="p">)))</span></div><div class='line' id='LC83'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">loop</span> <span class="nv">for</span> <span class="nv">start</span> <span class="nv">=</span> <span class="nv">start</span> <span class="nv">then</span> <span class="p">(</span><span class="mi">1</span><span class="nv">+</span> <span class="nv">matched</span><span class="p">)</span></div><div class='line' id='LC84'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">for</span> <span class="nv">matched</span> <span class="nv">=</span> <span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">case-fold-search</span> <span class="nv">nil</span><span class="p">))</span></div><div class='line' id='LC85'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">string-match</span> <span class="nv">regexp</span> <span class="nv">string</span> <span class="nv">start</span><span class="p">))</span></div><div class='line' id='LC86'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">while</span> <span class="p">(</span><span class="k">and </span><span class="nv">matched</span> <span class="p">(</span><span class="nb">&lt; </span><span class="p">(</span><span class="mi">1</span><span class="nv">+</span> <span class="nv">matched</span><span class="p">)</span> <span class="nv">end</span><span class="p">))</span></div><div class='line' id='LC87'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">count</span> <span class="nv">matched</span><span class="p">))</span></div><div class='line' id='LC88'><br/></div><div class='line' id='LC89'><br/></div><div class='line' id='LC90'><br/></div><div class='line' id='LC91'><span class="c1">;;; Jaro-Winkler Distance</span></div><div class='line' id='LC92'><br/></div><div class='line' id='LC93'><span class="p">(</span><span class="nf">defun</span> <span class="nv">fuzzy-jaro-winkler-distance</span> <span class="p">(</span><span class="nf">s1</span> <span class="nv">s2</span><span class="p">)</span></div><div class='line' id='LC94'>&nbsp;&nbsp;<span class="s">&quot;Compute Jaro-Winkler distance. See</span></div><div class='line' id='LC95'><span class="s">http://en.wikipedia.org/wiki/Jaro-Winkler_distance.&quot;</span></div><div class='line' id='LC96'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let* </span><span class="p">((</span><span class="nf">l1</span> <span class="p">(</span><span class="nb">length </span><span class="nv">s1</span><span class="p">))</span></div><div class='line' id='LC97'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">l2</span> <span class="p">(</span><span class="nb">length </span><span class="nv">s2</span><span class="p">))</span></div><div class='line' id='LC98'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">r</span> <span class="p">(</span><span class="nb">max </span><span class="mi">1</span> <span class="p">(</span><span class="mi">1</span><span class="nv">-</span> <span class="p">(</span><span class="nb">/ </span><span class="p">(</span><span class="nb">max </span><span class="nv">l1</span> <span class="nv">l2</span><span class="p">)</span> <span class="mi">2</span><span class="p">))))</span></div><div class='line' id='LC99'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">m</span> <span class="mi">0</span><span class="p">)</span></div><div class='line' id='LC100'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">tr</span> <span class="mi">0</span><span class="p">)</span></div><div class='line' id='LC101'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">p</span> <span class="mi">0</span><span class="p">)</span></div><div class='line' id='LC102'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">cs1</span> <span class="nv">cs2</span><span class="p">)</span></div><div class='line' id='LC103'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">loop</span> <span class="nv">with</span> <span class="nv">seen</span> <span class="nv">=</span> <span class="p">(</span><span class="nb">make-vector </span><span class="nv">l2</span> <span class="nv">nil</span><span class="p">)</span></div><div class='line' id='LC104'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">for</span> <span class="nv">i</span> <span class="nv">below</span> <span class="nv">l1</span></div><div class='line' id='LC105'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">for</span> <span class="nv">c1</span> <span class="nv">=</span> <span class="p">(</span><span class="nf">aref</span> <span class="nv">s1</span> <span class="nv">i</span><span class="p">)</span> <span class="nv">do</span></div><div class='line' id='LC106'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">loop</span> <span class="nv">for</span> <span class="nv">j</span> <span class="nv">from</span> <span class="p">(</span><span class="nb">max </span><span class="mi">0</span> <span class="p">(</span><span class="nb">- </span><span class="nv">i</span> <span class="nv">r</span><span class="p">))</span> <span class="nv">below</span> <span class="p">(</span><span class="nb">min </span><span class="nv">l2</span> <span class="p">(</span><span class="nb">+ </span><span class="nv">i</span> <span class="nv">r</span><span class="p">))</span></div><div class='line' id='LC107'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">for</span> <span class="nv">c2</span> <span class="nv">=</span> <span class="p">(</span><span class="nf">aref</span> <span class="nv">s2</span> <span class="nv">j</span><span class="p">)</span></div><div class='line' id='LC108'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if </span><span class="p">(</span><span class="k">and </span><span class="p">(</span><span class="nf">char-equal</span> <span class="nv">c1</span> <span class="nv">c2</span><span class="p">)</span></div><div class='line' id='LC109'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">null</span> <span class="p">(</span><span class="nf">aref</span> <span class="nv">seen</span> <span class="nv">j</span><span class="p">)))</span> <span class="nv">do</span></div><div class='line' id='LC110'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">push</span> <span class="nv">c1</span> <span class="nv">cs1</span><span class="p">)</span></div><div class='line' id='LC111'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">aset</span> <span class="nv">seen</span> <span class="nv">j</span> <span class="nv">c2</span><span class="p">)</span></div><div class='line' id='LC112'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">incf</span> <span class="nv">m</span><span class="p">)</span></div><div class='line' id='LC113'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">and </span><span class="nv">return</span> <span class="nv">nil</span><span class="p">)</span></div><div class='line' id='LC114'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">finally</span></div><div class='line' id='LC115'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">cs1</span> <span class="p">(</span><span class="nf">nreverse</span> <span class="nv">cs1</span><span class="p">)</span></div><div class='line' id='LC116'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">cs2</span> <span class="p">(</span><span class="nf">loop</span> <span class="nv">for</span> <span class="nv">i</span> <span class="nv">below</span> <span class="nv">l2</span></div><div class='line' id='LC117'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">for</span> <span class="nv">c</span> <span class="nv">=</span> <span class="p">(</span><span class="nf">aref</span> <span class="nv">seen</span> <span class="nv">i</span><span class="p">)</span></div><div class='line' id='LC118'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if </span><span class="nv">c</span> <span class="nv">collect</span> <span class="nv">c</span><span class="p">)))</span></div><div class='line' id='LC119'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">loop</span> <span class="nv">for</span> <span class="nv">c1</span> <span class="nv">in</span> <span class="nv">cs1</span></div><div class='line' id='LC120'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">for</span> <span class="nv">c2</span> <span class="nv">in</span> <span class="nv">cs2</span></div><div class='line' id='LC121'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if </span><span class="p">(</span><span class="nb">not </span><span class="p">(</span><span class="nf">char-equal</span> <span class="nv">c1</span> <span class="nv">c2</span><span class="p">))</span></div><div class='line' id='LC122'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">do </span><span class="p">(</span><span class="nf">incf</span> <span class="nv">tr</span><span class="p">))</span></div><div class='line' id='LC123'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">loop</span> <span class="nv">for</span> <span class="nv">i</span> <span class="nv">below</span> <span class="p">(</span><span class="nb">min </span><span class="nv">m</span> <span class="mi">5</span><span class="p">)</span></div><div class='line' id='LC124'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">for</span> <span class="nv">c1</span> <span class="nv">across</span> <span class="nv">s1</span></div><div class='line' id='LC125'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">for</span> <span class="nv">c2</span> <span class="nv">across</span> <span class="nv">s2</span></div><div class='line' id='LC126'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">while</span> <span class="p">(</span><span class="nf">char-equal</span> <span class="nv">c1</span> <span class="nv">c2</span><span class="p">)</span></div><div class='line' id='LC127'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">do </span><span class="p">(</span><span class="nf">incf</span> <span class="nv">p</span><span class="p">))</span></div><div class='line' id='LC128'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="nf">eq</span> <span class="nv">m</span> <span class="mi">0</span><span class="p">)</span></div><div class='line' id='LC129'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="mf">0.0</span></div><div class='line' id='LC130'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">m</span> <span class="p">(</span><span class="nf">float</span> <span class="nv">m</span><span class="p">))</span></div><div class='line' id='LC131'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">let* </span><span class="p">((</span><span class="nf">dj</span> <span class="p">(</span><span class="nb">/ </span><span class="p">(</span><span class="nb">+ </span><span class="p">(</span><span class="nb">/ </span><span class="nv">m</span> <span class="nv">l1</span><span class="p">)</span> <span class="p">(</span><span class="nb">/ </span><span class="nv">m</span> <span class="nv">l2</span><span class="p">)</span> <span class="p">(</span><span class="nb">/ </span><span class="p">(</span><span class="nb">- </span><span class="nv">m</span> <span class="p">(</span><span class="nb">/ </span><span class="nv">tr</span> <span class="mi">2</span><span class="p">))</span> <span class="nv">m</span><span class="p">))</span> <span class="mi">3</span><span class="p">))</span></div><div class='line' id='LC132'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">dw</span> <span class="p">(</span><span class="nb">+ </span><span class="nv">dj</span> <span class="p">(</span><span class="nb">* </span><span class="nv">p</span> <span class="mf">0.1</span> <span class="p">(</span><span class="nb">- </span><span class="mi">1</span> <span class="nv">dj</span><span class="p">)))))</span></div><div class='line' id='LC133'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">dw</span><span class="p">))))</span></div><div class='line' id='LC134'><br/></div><div class='line' id='LC135'><span class="c1">;; Make sure byte-compiled.</span></div><div class='line' id='LC136'><span class="p">(</span><span class="nf">byte-compile</span> <span class="ss">&#39;fuzzy-jaro-winkler-distance</span><span class="p">)</span></div><div class='line' id='LC137'><br/></div><div class='line' id='LC138'><span class="p">(</span><span class="nf">defalias</span> <span class="ss">&#39;fuzzy-jaro-winkler-score</span> <span class="ss">&#39;fuzzy-jaro-winkler-distance</span><span class="p">)</span></div><div class='line' id='LC139'><br/></div><div class='line' id='LC140'><br/></div><div class='line' id='LC141'><br/></div><div class='line' id='LC142'><span class="c1">;;; Fuzzy Matching</span></div><div class='line' id='LC143'><br/></div><div class='line' id='LC144'><span class="p">(</span><span class="nf">defcustom</span> <span class="nv">fuzzy-match-score-function</span> <span class="ss">&#39;fuzzy-jaro-winkler-score</span></div><div class='line' id='LC145'>&nbsp;&nbsp;<span class="s">&quot;Score function for fuzzy matching.&quot;</span></div><div class='line' id='LC146'>&nbsp;&nbsp;<span class="nv">:type</span> <span class="ss">&#39;function</span></div><div class='line' id='LC147'>&nbsp;&nbsp;<span class="nv">:group</span> <span class="ss">&#39;fuzzy</span><span class="p">)</span></div><div class='line' id='LC148'><br/></div><div class='line' id='LC149'><span class="p">(</span><span class="nf">defcustom</span> <span class="nv">fuzzy-match-accept-error-rate</span> <span class="mf">0.10</span></div><div class='line' id='LC150'>&nbsp;&nbsp;<span class="s">&quot;Fuzzy matching error threshold.&quot;</span></div><div class='line' id='LC151'>&nbsp;&nbsp;<span class="nv">:type</span> <span class="ss">&#39;number</span></div><div class='line' id='LC152'>&nbsp;&nbsp;<span class="nv">:group</span> <span class="ss">&#39;fuzzy</span><span class="p">)</span></div><div class='line' id='LC153'><br/></div><div class='line' id='LC154'><span class="p">(</span><span class="nf">defcustom</span> <span class="nv">fuzzy-match-accept-length-difference</span> <span class="mi">2</span></div><div class='line' id='LC155'>&nbsp;&nbsp;<span class="s">&quot;Fuzzy matching length difference threshold.&quot;</span></div><div class='line' id='LC156'>&nbsp;&nbsp;<span class="nv">:type</span> <span class="ss">&#39;number</span></div><div class='line' id='LC157'>&nbsp;&nbsp;<span class="nv">:group</span> <span class="ss">&#39;fuzzy</span><span class="p">)</span></div><div class='line' id='LC158'><br/></div><div class='line' id='LC159'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">fuzzy-match-score-cache</span></div><div class='line' id='LC160'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">make-hash-table</span> <span class="nv">:test</span> <span class="ss">&#39;equal</span> <span class="nv">:weakness</span> <span class="nv">t</span><span class="p">))</span></div><div class='line' id='LC161'><br/></div><div class='line' id='LC162'><span class="p">(</span><span class="nf">defun</span> <span class="nv">fuzzy-match-score</span> <span class="p">(</span><span class="nf">s1</span> <span class="nv">s2</span> <span class="nv">function</span><span class="p">)</span></div><div class='line' id='LC163'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">cache-key</span> <span class="p">(</span><span class="nb">list </span><span class="nv">function</span> <span class="nv">s1</span> <span class="nv">s2</span><span class="p">)))</span></div><div class='line' id='LC164'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">or </span><span class="p">(</span><span class="nf">gethash</span> <span class="nv">cache-key</span> <span class="nv">fuzzy-match-score-cache</span><span class="p">)</span></div><div class='line' id='LC165'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">puthash</span> <span class="nv">cache-key</span></div><div class='line' id='LC166'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">funcall</span> <span class="nv">function</span> <span class="nv">s1</span> <span class="nv">s2</span><span class="p">)</span></div><div class='line' id='LC167'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">fuzzy-match-score-cache</span><span class="p">))))</span></div><div class='line' id='LC168'><br/></div><div class='line' id='LC169'><span class="p">(</span><span class="nf">defun*</span> <span class="nv">fuzzy-match</span> <span class="p">(</span><span class="nf">s1</span> <span class="nv">s2</span> <span class="nv">&amp;optional</span> <span class="p">(</span><span class="nf">function</span> <span class="nv">fuzzy-match-score-function</span><span class="p">))</span></div><div class='line' id='LC170'>&nbsp;&nbsp;<span class="s">&quot;Return t if S1 and S2 are matched. FUNCTION is a function</span></div><div class='line' id='LC171'><span class="s">scoring between S1 and S2. The score must be between 0.0 and</span></div><div class='line' id='LC172'><span class="s">1.0.&quot;</span></div><div class='line' id='LC173'>&nbsp;&nbsp;<span class="p">(</span><span class="k">and </span><span class="p">(</span><span class="nb">&lt;= </span><span class="p">(</span><span class="nb">abs </span><span class="p">(</span><span class="nb">- </span><span class="p">(</span><span class="nb">length </span><span class="nv">s1</span><span class="p">)</span> <span class="p">(</span><span class="nb">length </span><span class="nv">s2</span><span class="p">)))</span></div><div class='line' id='LC174'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">fuzzy-match-accept-length-difference</span><span class="p">)</span></div><div class='line' id='LC175'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nb">&gt;= </span><span class="p">(</span><span class="nf">fuzzy-match-score</span> <span class="nv">s1</span> <span class="nv">s2</span> <span class="nv">function</span><span class="p">)</span></div><div class='line' id='LC176'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nb">- </span><span class="mi">1</span> <span class="nv">fuzzy-match-accept-error-rate</span><span class="p">))))</span></div><div class='line' id='LC177'><br/></div><div class='line' id='LC178'><br/></div><div class='line' id='LC179'><br/></div><div class='line' id='LC180'><span class="c1">;;; Fuzzy Completion</span></div><div class='line' id='LC181'><br/></div><div class='line' id='LC182'><span class="p">(</span><span class="nf">defun</span> <span class="nv">fuzzy-all-completions</span> <span class="p">(</span><span class="nb">string </span><span class="nv">collection</span><span class="p">)</span></div><div class='line' id='LC183'>&nbsp;&nbsp;<span class="s">&quot;`all-completions&#39; with fuzzy matching.&quot;</span></div><div class='line' id='LC184'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">loop</span> <span class="nv">with</span> <span class="nv">length</span> <span class="nv">=</span> <span class="p">(</span><span class="nb">length </span><span class="nv">string</span><span class="p">)</span></div><div class='line' id='LC185'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">for</span> <span class="nv">str</span> <span class="nv">in</span> <span class="nv">collection</span></div><div class='line' id='LC186'>	<span class="nv">for</span> <span class="nv">len</span> <span class="nv">=</span> <span class="p">(</span><span class="nb">min </span><span class="p">(</span><span class="nb">length </span><span class="nv">str</span><span class="p">)</span> <span class="p">(</span><span class="nb">+ </span><span class="nv">length</span> <span class="nv">fuzzy-match-accept-length-difference</span><span class="p">))</span></div><div class='line' id='LC187'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if </span><span class="p">(</span><span class="nf">fuzzy-match</span> <span class="nv">string</span> <span class="p">(</span><span class="nb">substring </span><span class="nv">str</span> <span class="mi">0</span> <span class="nv">len</span><span class="p">))</span></div><div class='line' id='LC188'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">collect</span> <span class="nv">str</span><span class="p">))</span></div><div class='line' id='LC189'><br/></div><div class='line' id='LC190'><br/></div><div class='line' id='LC191'><br/></div><div class='line' id='LC192'><span class="c1">;;; Fuzzy Search</span></div><div class='line' id='LC193'><br/></div><div class='line' id='LC194'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">fuzzy-search-some-char-regexp</span></div><div class='line' id='LC195'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">format</span> <span class="s">&quot;.\\{0,%s\\}&quot;</span> <span class="nv">fuzzy-match-accept-length-difference</span><span class="p">))</span></div><div class='line' id='LC196'><br/></div><div class='line' id='LC197'><span class="p">(</span><span class="nf">defun</span> <span class="nv">fuzzy-search-regexp-compile</span> <span class="p">(</span><span class="nf">string</span><span class="p">)</span></div><div class='line' id='LC198'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">flet</span> <span class="p">((</span><span class="nf">opt</span> <span class="p">(</span><span class="nf">n</span><span class="p">)</span></div><div class='line' id='LC199'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">regexp-opt-charset</span></div><div class='line' id='LC200'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nb">append </span><span class="p">(</span><span class="nb">substring </span><span class="nv">string</span></div><div class='line' id='LC201'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nb">max </span><span class="mi">0</span> <span class="p">(</span><span class="nb">- </span><span class="nv">n</span> <span class="mi">1</span><span class="p">))</span></div><div class='line' id='LC202'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nb">min </span><span class="p">(</span><span class="nb">length </span><span class="nv">string</span><span class="p">)</span> <span class="p">(</span><span class="nb">+ </span><span class="nv">n</span> <span class="mi">2</span><span class="p">)))</span></div><div class='line' id='LC203'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">nil</span><span class="p">))))</span></div><div class='line' id='LC204'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">concat</span></div><div class='line' id='LC205'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;\\(&quot;</span></div><div class='line' id='LC206'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">loop</span> <span class="nv">for</span> <span class="nv">i</span> <span class="nv">below</span> <span class="p">(</span><span class="nb">length </span><span class="nv">string</span><span class="p">)</span></div><div class='line' id='LC207'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">for</span> <span class="nv">c</span> <span class="nv">=</span> <span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="nf">evenp</span> <span class="nv">i</span><span class="p">)</span> <span class="p">(</span><span class="nf">opt</span> <span class="nv">i</span><span class="p">)</span> <span class="nv">fuzzy-search-some-char-regexp</span><span class="p">)</span></div><div class='line' id='LC208'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">concat</span> <span class="nv">c</span><span class="p">)</span></div><div class='line' id='LC209'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;\\|&quot;</span></div><div class='line' id='LC210'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">loop</span> <span class="nv">for</span> <span class="nv">i</span> <span class="nv">below</span> <span class="p">(</span><span class="nb">length </span><span class="nv">string</span><span class="p">)</span></div><div class='line' id='LC211'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">for</span> <span class="nv">c</span> <span class="nv">=</span> <span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="nf">oddp</span> <span class="nv">i</span><span class="p">)</span> <span class="p">(</span><span class="nf">opt</span> <span class="nv">i</span><span class="p">)</span> <span class="nv">fuzzy-search-some-char-regexp</span><span class="p">)</span></div><div class='line' id='LC212'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">concat</span> <span class="nv">c</span><span class="p">)</span></div><div class='line' id='LC213'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;\\)&quot;</span><span class="p">)))</span></div><div class='line' id='LC214'><br/></div><div class='line' id='LC215'><span class="p">(</span><span class="nf">defun</span> <span class="nv">fuzzy-search-forward</span> <span class="p">(</span><span class="nb">string </span><span class="nv">&amp;optional</span> <span class="nv">bound</span> <span class="nv">noerror</span> <span class="nv">count</span><span class="p">)</span></div><div class='line' id='LC216'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">regexp</span> <span class="p">(</span><span class="nf">fuzzy-search-regexp-compile</span> <span class="nv">string</span><span class="p">))</span></div><div class='line' id='LC217'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">match-data</span><span class="p">)</span></div><div class='line' id='LC218'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">save-excursion</span></div><div class='line' id='LC219'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">while</span> <span class="p">(</span><span class="k">and </span><span class="p">(</span><span class="nf">null</span> <span class="nv">match-data</span><span class="p">)</span></div><div class='line' id='LC220'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">re-search-forward</span> <span class="nv">regexp</span> <span class="nv">bound</span> <span class="nv">t</span><span class="p">))</span></div><div class='line' id='LC221'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="nf">fuzzy-match</span> <span class="nv">string</span> <span class="p">(</span><span class="nf">match-string</span> <span class="mi">1</span><span class="p">))</span></div><div class='line' id='LC222'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">match-data</span> <span class="p">(</span><span class="nf">match-data</span><span class="p">))</span></div><div class='line' id='LC223'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">goto-char</span> <span class="p">(</span><span class="mi">1</span><span class="nv">+</span> <span class="p">(</span><span class="nf">match-beginning</span> <span class="mi">1</span><span class="p">))))))</span></div><div class='line' id='LC224'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">when</span> <span class="nv">match-data</span></div><div class='line' id='LC225'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">store-match-data</span> <span class="nv">match-data</span><span class="p">)</span></div><div class='line' id='LC226'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">goto-char</span> <span class="p">(</span><span class="nf">match-end</span> <span class="mi">1</span><span class="p">)))))</span></div><div class='line' id='LC227'><br/></div><div class='line' id='LC228'><span class="p">(</span><span class="nf">defun</span> <span class="nv">fuzzy-search-backward</span> <span class="p">(</span><span class="nb">string </span><span class="nv">&amp;optional</span> <span class="nv">bound</span> <span class="nv">noerror</span> <span class="nv">count</span><span class="p">)</span></div><div class='line' id='LC229'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let* </span><span class="p">((</span><span class="nf">regexp</span> <span class="p">(</span><span class="nf">fuzzy-search-regexp-compile</span> <span class="nv">string</span><span class="p">))</span></div><div class='line' id='LC230'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">match-data</span> <span class="k">begin </span><span class="nv">end</span><span class="p">)</span></div><div class='line' id='LC231'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">save-excursion</span></div><div class='line' id='LC232'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">while</span> <span class="p">(</span><span class="k">and </span><span class="p">(</span><span class="nf">null</span> <span class="nv">match-data</span><span class="p">)</span></div><div class='line' id='LC233'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">re-search-backward</span> <span class="nv">regexp</span> <span class="nv">bound</span> <span class="nv">t</span><span class="p">))</span></div><div class='line' id='LC234'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="k">begin </span><span class="p">(</span><span class="nf">match-beginning</span> <span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC235'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">end</span>   <span class="p">(</span><span class="nf">match-end</span> <span class="mi">1</span><span class="p">))</span></div><div class='line' id='LC236'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">store-match-data</span> <span class="nv">nil</span><span class="p">)</span></div><div class='line' id='LC237'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">goto-char</span> <span class="p">(</span><span class="nb">max </span><span class="p">(</span><span class="nf">point-min</span><span class="p">)</span> <span class="p">(</span><span class="nb">- </span><span class="k">begin </span><span class="p">(</span><span class="nb">* </span><span class="p">(</span><span class="nb">length </span><span class="nv">string</span><span class="p">)</span> <span class="mi">2</span><span class="p">))))</span></div><div class='line' id='LC238'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">while</span> <span class="p">(</span><span class="nf">re-search-forward</span> <span class="nv">regexp</span> <span class="nv">end</span> <span class="nv">t</span><span class="p">)</span></div><div class='line' id='LC239'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="nf">fuzzy-match</span> <span class="nv">string</span> <span class="p">(</span><span class="nf">match-string</span> <span class="mi">1</span><span class="p">))</span></div><div class='line' id='LC240'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">match-data</span> <span class="p">(</span><span class="nf">match-data</span><span class="p">))</span></div><div class='line' id='LC241'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">goto-char</span> <span class="p">(</span><span class="mi">1</span><span class="nv">+</span> <span class="p">(</span><span class="nf">match-beginning</span> <span class="mi">1</span><span class="p">)))))</span></div><div class='line' id='LC242'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">unless</span> <span class="nv">match-data</span></div><div class='line' id='LC243'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">goto-char</span> <span class="nv">begin</span><span class="p">)))</span></div><div class='line' id='LC244'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="nv">match-data</span></div><div class='line' id='LC245'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">progn</span></div><div class='line' id='LC246'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">store-match-data</span> <span class="nv">match-data</span><span class="p">)</span></div><div class='line' id='LC247'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">goto-char</span> <span class="p">(</span><span class="nf">match-beginning</span> <span class="mi">1</span><span class="p">)))</span></div><div class='line' id='LC248'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">store-match-data</span> <span class="nv">nil</span><span class="p">)))))</span></div><div class='line' id='LC249'><br/></div><div class='line' id='LC250'><br/></div><div class='line' id='LC251'><br/></div><div class='line' id='LC252'><span class="c1">;;; Fuzzy Incremental Search</span></div><div class='line' id='LC253'><br/></div><div class='line' id='LC254'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">fuzzy-isearch</span> <span class="nv">nil</span><span class="p">)</span></div><div class='line' id='LC255'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">fuzzy-isearch-failed-count</span> <span class="mi">0</span><span class="p">)</span></div><div class='line' id='LC256'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">fuzzy-isearch-enabled</span> <span class="ss">&#39;on-failed</span><span class="p">)</span></div><div class='line' id='LC257'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">fuzzy-isearch-original-search-fun</span> <span class="nv">nil</span><span class="p">)</span></div><div class='line' id='LC258'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">fuzzy-isearch-message-prefix</span></div><div class='line' id='LC259'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">concat</span> <span class="p">(</span><span class="nf">propertize</span> <span class="s">&quot;[FUZZY]&quot;</span> <span class="ss">&#39;face</span> <span class="ss">&#39;bold</span><span class="p">)</span> <span class="s">&quot; &quot;</span><span class="p">))</span></div><div class='line' id='LC260'><br/></div><div class='line' id='LC261'><span class="p">(</span><span class="nf">defun</span> <span class="nv">fuzzy-isearch-activate</span> <span class="p">()</span></div><div class='line' id='LC262'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">fuzzy-isearch</span> <span class="nv">t</span><span class="p">)</span></div><div class='line' id='LC263'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">fuzzy-isearch-failed-count</span> <span class="mi">0</span><span class="p">))</span></div><div class='line' id='LC264'><br/></div><div class='line' id='LC265'><span class="p">(</span><span class="nf">defun</span> <span class="nv">fuzzy-isearch-deactivate</span> <span class="p">()</span></div><div class='line' id='LC266'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">fuzzy-isearch</span> <span class="nv">nil</span><span class="p">)</span></div><div class='line' id='LC267'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">fuzzy-isearch-failed-count</span> <span class="mi">0</span><span class="p">))</span></div><div class='line' id='LC268'><br/></div><div class='line' id='LC269'><span class="p">(</span><span class="nf">defun</span> <span class="nv">fuzzy-isearch</span> <span class="p">()</span></div><div class='line' id='LC270'>&nbsp;&nbsp;<span class="p">(</span><span class="k">cond </span><span class="p">(</span><span class="nf">isearch-word</span></div><div class='line' id='LC271'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="nv">isearch-forward</span> <span class="ss">&#39;word-search-forward</span> <span class="ss">&#39;word-search-backward</span><span class="p">))</span></div><div class='line' id='LC272'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">isearch-regexp</span></div><div class='line' id='LC273'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="nv">isearch-forward</span> <span class="ss">&#39;re-search-forward</span> <span class="ss">&#39;re-search-backward</span><span class="p">))</span></div><div class='line' id='LC274'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">((</span><span class="k">or </span><span class="nv">fuzzy-isearch</span></div><div class='line' id='LC275'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">eq</span> <span class="nv">fuzzy-isearch-enabled</span> <span class="ss">&#39;always</span><span class="p">)</span></div><div class='line' id='LC276'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">and </span><span class="p">(</span><span class="nf">eq</span> <span class="nv">fuzzy-isearch-enabled</span> <span class="ss">&#39;on-failed</span><span class="p">)</span></div><div class='line' id='LC277'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">null</span> <span class="nv">isearch-success</span><span class="p">)</span></div><div class='line' id='LC278'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">isearch-wrapped</span></div><div class='line' id='LC279'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nb">&gt; </span><span class="p">(</span><span class="nf">incf</span> <span class="nv">fuzzy-isearch-failed-count</span><span class="p">)</span> <span class="mi">1</span><span class="p">)))</span></div><div class='line' id='LC280'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">unless</span> <span class="nv">fuzzy-isearch</span></div><div class='line' id='LC281'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">fuzzy-isearch-activate</span><span class="p">))</span></div><div class='line' id='LC282'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="nv">isearch-forward</span> <span class="ss">&#39;fuzzy-search-forward</span> <span class="ss">&#39;fuzzy-search-backward</span><span class="p">))</span></div><div class='line' id='LC283'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">t</span></div><div class='line' id='LC284'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="nv">isearch-forward</span> <span class="ss">&#39;search-forward</span> <span class="ss">&#39;search-backward</span><span class="p">))))</span></div><div class='line' id='LC285'><br/></div><div class='line' id='LC286'><span class="p">(</span><span class="nf">defun</span> <span class="nv">fuzzy-isearch-end-hook</span> <span class="p">()</span></div><div class='line' id='LC287'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">fuzzy-isearch-deactivate</span><span class="p">))</span></div><div class='line' id='LC288'><br/></div><div class='line' id='LC289'><span class="p">(</span><span class="nf">defun</span> <span class="nv">turn-on-fuzzy-isearch</span> <span class="p">()</span></div><div class='line' id='LC290'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">interactive</span><span class="p">)</span></div><div class='line' id='LC291'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">fuzzy-isearch-original-search-fun</span> <span class="nv">isearch-search-fun-function</span><span class="p">)</span></div><div class='line' id='LC292'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">isearch-search-fun-function</span> <span class="ss">&#39;fuzzy-isearch</span><span class="p">)</span></div><div class='line' id='LC293'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">add-hook</span> <span class="ss">&#39;isearch-mode-end-hook</span> <span class="ss">&#39;fuzzy-isearch-end-hook</span><span class="p">))</span></div><div class='line' id='LC294'><br/></div><div class='line' id='LC295'><span class="p">(</span><span class="nf">defun</span> <span class="nv">turn-off-fuzzy-isearch</span> <span class="p">()</span></div><div class='line' id='LC296'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">interactive</span><span class="p">)</span></div><div class='line' id='LC297'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">isearch-search-fun-function</span> <span class="nv">fuzzy-isearch-original-search-fun</span><span class="p">)</span></div><div class='line' id='LC298'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">remove-hook</span> <span class="ss">&#39;isearch-mode-end-hook</span> <span class="ss">&#39;fuzzy-isearch-end-hook</span><span class="p">))</span></div><div class='line' id='LC299'><br/></div><div class='line' id='LC300'><span class="p">(</span><span class="nf">defadvice</span> <span class="nv">isearch-message-prefix</span> <span class="p">(</span><span class="nf">after</span> <span class="nv">fuzzy-isearch-message-prefix</span> <span class="nv">activate</span><span class="p">)</span></div><div class='line' id='LC301'>&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="nv">fuzzy-isearch</span></div><div class='line' id='LC302'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">ad-return-value</span> <span class="p">(</span><span class="nf">concat</span> <span class="nv">fuzzy-isearch-message-prefix</span> <span class="nv">ad-return-value</span><span class="p">))</span></div><div class='line' id='LC303'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">ad-return-value</span><span class="p">))</span></div><div class='line' id='LC304'><br/></div><div class='line' id='LC305'><br/></div><div class='line' id='LC306'><br/></div><div class='line' id='LC307'><span class="c1">;;; QuickSilver&#39;s Abbreviation Scoring</span></div><div class='line' id='LC308'><br/></div><div class='line' id='LC309'><span class="p">(</span><span class="nf">defun</span> <span class="nv">fuzzy-quicksilver-make-abbrev-regexp</span> <span class="p">(</span><span class="nf">abbrev</span><span class="p">)</span></div><div class='line' id='LC310'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">concat</span> <span class="s">&quot;^&quot;</span></div><div class='line' id='LC311'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">loop</span> <span class="nv">for</span> <span class="nv">char</span> <span class="nv">across</span> <span class="p">(</span><span class="nf">downcase</span> <span class="nv">abbrev</span><span class="p">)</span> <span class="nv">concat</span></div><div class='line' id='LC312'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">format</span> <span class="s">&quot;.*?\\(%s\\)&quot;</span></div><div class='line' id='LC313'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">regexp-quote</span> <span class="p">(</span><span class="nb">string </span><span class="nv">char</span><span class="p">))))))</span></div><div class='line' id='LC314'><br/></div><div class='line' id='LC315'><span class="p">(</span><span class="nf">defun</span> <span class="nv">fuzzy-quicksilver-abbrev-penalty</span> <span class="p">(</span><span class="nb">string </span><span class="nv">skip-start</span> <span class="nv">skip-end</span><span class="p">)</span></div><div class='line' id='LC316'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">skipped</span> <span class="p">(</span><span class="nb">- </span><span class="nv">skip-end</span> <span class="nv">skip-start</span><span class="p">)))</span></div><div class='line' id='LC317'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">cond</span></div><div class='line' id='LC318'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">((</span><span class="nf">zerop</span> <span class="nv">skipped</span><span class="p">)</span> <span class="mi">0</span><span class="p">)</span></div><div class='line' id='LC319'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">((</span><span class="nf">string-match</span> <span class="s">&quot;[ \\t\\r\\n_-]+$&quot;</span> <span class="p">(</span><span class="nb">substring </span><span class="nv">string</span> <span class="nv">skip-start</span> <span class="nv">skip-end</span><span class="p">))</span></div><div class='line' id='LC320'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">seps</span> <span class="p">(</span><span class="nb">- </span><span class="p">(</span><span class="nf">match-end</span> <span class="mi">0</span><span class="p">)</span> <span class="p">(</span><span class="nf">match-beginning</span> <span class="mi">0</span><span class="p">))))</span></div><div class='line' id='LC321'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nb">+ </span><span class="nv">seps</span> <span class="p">(</span><span class="nb">* </span><span class="p">(</span><span class="nb">- </span><span class="nv">skipped</span> <span class="nv">seps</span><span class="p">)</span> <span class="mf">0.15</span><span class="p">))))</span></div><div class='line' id='LC322'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">((</span><span class="k">let </span><span class="p">((</span><span class="nf">case-fold-search</span> <span class="nv">nil</span><span class="p">))</span></div><div class='line' id='LC323'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">eq</span> <span class="p">(</span><span class="nf">string-match</span> <span class="s">&quot;[[:upper:]]&quot;</span> <span class="nv">string</span> <span class="nv">skip-end</span><span class="p">)</span> <span class="nv">skip-end</span><span class="p">))</span></div><div class='line' id='LC324'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">ups</span> <span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">case-fold-search</span> <span class="nv">nil</span><span class="p">))</span></div><div class='line' id='LC325'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">fuzzy-count-matches-in-string</span></div><div class='line' id='LC326'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;[[:upper:]]&quot;</span> <span class="nv">string</span> <span class="nv">skip-start</span> <span class="nv">skip-end</span><span class="p">))))</span></div><div class='line' id='LC327'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nb">+ </span><span class="nv">ups</span> <span class="p">(</span><span class="nb">* </span><span class="p">(</span><span class="nb">- </span><span class="nv">skipped</span> <span class="nv">ups</span><span class="p">)</span> <span class="mf">0.15</span><span class="p">))))</span></div><div class='line' id='LC328'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">t</span> <span class="nv">skipped</span><span class="p">))))</span></div><div class='line' id='LC329'><br/></div><div class='line' id='LC330'><span class="p">(</span><span class="nf">defun</span> <span class="nv">fuzzy-quicksilver-abbrev-score-nocache</span> <span class="p">(</span><span class="nb">string </span><span class="nv">abbrev</span><span class="p">)</span></div><div class='line' id='LC331'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">cond</span></div><div class='line' id='LC332'>&nbsp;&nbsp;&nbsp;<span class="p">((</span><span class="nf">zerop</span> <span class="p">(</span><span class="nb">length </span><span class="nv">abbrev</span><span class="p">))</span>             <span class="mf">0.9</span><span class="p">)</span></div><div class='line' id='LC333'>&nbsp;&nbsp;&nbsp;<span class="p">((</span><span class="nb">&lt; </span><span class="p">(</span><span class="nb">length </span><span class="nv">string</span><span class="p">)</span> <span class="p">(</span><span class="nb">length </span><span class="nv">abbrev</span><span class="p">))</span> <span class="mf">0.0</span><span class="p">)</span></div><div class='line' id='LC334'>&nbsp;&nbsp;&nbsp;<span class="p">((</span><span class="k">let </span><span class="p">((</span><span class="nf">regexp</span> <span class="p">(</span><span class="nf">fuzzy-quicksilver-make-abbrev-regexp</span> <span class="nv">abbrev</span><span class="p">))</span></div><div class='line' id='LC335'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">case-fold-search</span> <span class="nv">t</span><span class="p">))</span></div><div class='line' id='LC336'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">string-match</span> <span class="nv">regexp</span> <span class="nv">string</span><span class="p">))</span></div><div class='line' id='LC337'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">loop</span> <span class="nv">with</span> <span class="nv">groups</span> <span class="nv">=</span> <span class="p">(</span><span class="nb">cddr </span><span class="p">(</span><span class="nf">match-data</span><span class="p">))</span></div><div class='line' id='LC338'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">while</span> <span class="nv">groups</span></div><div class='line' id='LC339'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">for</span> <span class="nv">prev</span>    <span class="nv">=</span> <span class="mi">0</span> <span class="nv">then</span> <span class="nv">end</span></div><div class='line' id='LC340'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">for</span> <span class="nv">start</span>   <span class="nv">=</span> <span class="p">(</span><span class="nf">pop</span> <span class="nv">groups</span><span class="p">)</span></div><div class='line' id='LC341'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">for</span> <span class="nv">end</span>     <span class="nv">=</span> <span class="p">(</span><span class="nf">pop</span> <span class="nv">groups</span><span class="p">)</span></div><div class='line' id='LC342'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">for</span> <span class="nv">matched</span> <span class="nv">=</span> <span class="p">(</span><span class="nb">- </span><span class="nv">end</span> <span class="nv">start</span><span class="p">)</span></div><div class='line' id='LC343'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">for</span> <span class="nv">skipped</span> <span class="nv">=</span> <span class="p">(</span><span class="nb">- </span><span class="nv">start</span> <span class="nv">prev</span><span class="p">)</span></div><div class='line' id='LC344'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">for</span> <span class="nv">penalty</span> <span class="nv">=</span> <span class="p">(</span><span class="nf">fuzzy-quicksilver-abbrev-penalty</span> <span class="nv">string</span> <span class="nv">prev</span> <span class="nv">start</span><span class="p">)</span></div><div class='line' id='LC345'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">sum</span> <span class="p">(</span><span class="nb">+ </span><span class="nv">matched</span> <span class="p">(</span><span class="nb">- </span><span class="nv">skipped</span> <span class="nv">penalty</span><span class="p">))</span> <span class="nv">into</span> <span class="nv">point</span></div><div class='line' id='LC346'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">finally</span> <span class="nv">return</span></div><div class='line' id='LC347'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">let* </span><span class="p">((</span><span class="nb">length </span><span class="p">(</span><span class="nb">length </span><span class="nv">string</span><span class="p">))</span></div><div class='line' id='LC348'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">rest</span> <span class="p">(</span><span class="nb">- </span><span class="nv">length</span> <span class="nv">end</span><span class="p">)))</span></div><div class='line' id='LC349'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nb">/ </span><span class="p">(</span><span class="nb">+ </span><span class="nv">point</span> <span class="p">(</span><span class="nb">* </span><span class="nv">rest</span> <span class="mf">0.9</span><span class="p">))</span> <span class="p">(</span><span class="nf">float</span> <span class="nv">length</span><span class="p">)))))</span></div><div class='line' id='LC350'>&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">t</span> <span class="mf">0.0</span><span class="p">)))</span></div><div class='line' id='LC351'><br/></div><div class='line' id='LC352'><span class="c1">;; Make sure byte-compiled.</span></div><div class='line' id='LC353'><span class="p">(</span><span class="nf">byte-compile</span> <span class="ss">&#39;fuzzy-quicksilver-abbrev-score-nocache</span><span class="p">)</span></div><div class='line' id='LC354'><br/></div><div class='line' id='LC355'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">fuzzy-quicksilver-abbrev-score-cache</span></div><div class='line' id='LC356'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">make-hash-table</span> <span class="nv">:test</span> <span class="ss">&#39;equal</span> <span class="nv">:weakness</span> <span class="nv">t</span><span class="p">))</span></div><div class='line' id='LC357'><br/></div><div class='line' id='LC358'><span class="p">(</span><span class="nf">defun</span> <span class="nv">fuzzy-quicksilver-abbrev-score</span> <span class="p">(</span><span class="nb">string </span><span class="nv">abbrev</span><span class="p">)</span></div><div class='line' id='LC359'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">cache-key</span> <span class="p">(</span><span class="nb">cons </span><span class="nv">string</span> <span class="nv">abbrev</span><span class="p">)))</span></div><div class='line' id='LC360'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">or </span><span class="p">(</span><span class="nf">gethash</span> <span class="nv">cache-key</span> <span class="nv">fuzzy-quicksilver-abbrev-score-cache</span><span class="p">)</span></div><div class='line' id='LC361'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">puthash</span> <span class="nv">cache-key</span></div><div class='line' id='LC362'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">fuzzy-quicksilver-abbrev-score-nocache</span> <span class="nv">string</span> <span class="nv">abbrev</span><span class="p">)</span></div><div class='line' id='LC363'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">fuzzy-quicksilver-abbrev-score-cache</span><span class="p">))))</span></div><div class='line' id='LC364'><br/></div><div class='line' id='LC365'><span class="p">(</span><span class="nf">defun*</span> <span class="nv">fuzzy-quicksilver-realtime-abbrev-score</span> <span class="p">(</span><span class="nf">list</span></div><div class='line' id='LC366'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">abbrev</span></div><div class='line' id='LC367'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">&amp;key</span></div><div class='line' id='LC368'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">limit</span></div><div class='line' id='LC369'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">timeout</span></div><div class='line' id='LC370'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">quality</span> <span class="mf">0.7</span><span class="p">)</span></div><div class='line' id='LC371'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">&amp;aux</span> <span class="nv">new-list</span><span class="p">)</span></div><div class='line' id='LC372'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">fuzzy-with-timeout</span> <span class="p">(</span><span class="nf">timeout</span> <span class="p">(</span><span class="nf">nreverse</span> <span class="nv">new-list</span><span class="p">))</span></div><div class='line' id='LC373'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">loop</span> <span class="nv">with</span> <span class="nv">length</span> <span class="nv">=</span> <span class="mi">0</span></div><div class='line' id='LC374'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">for</span> <span class="nv">string</span> <span class="nv">in</span> <span class="nv">list</span></div><div class='line' id='LC375'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">for</span> <span class="nv">score</span> <span class="nv">=</span> <span class="p">(</span><span class="nf">fuzzy-quicksilver-abbrev-score</span> <span class="nv">string</span> <span class="nv">abbrev</span><span class="p">)</span></div><div class='line' id='LC376'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if </span><span class="p">(</span><span class="nb">&gt;= </span><span class="nv">score</span> <span class="nv">quality</span><span class="p">)</span> <span class="nv">do</span></div><div class='line' id='LC377'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">fuzzy-add-to-list-as-sorted</span></div><div class='line' id='LC378'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">&#39;new-list</span> <span class="p">(</span><span class="nb">cons </span><span class="nv">string</span> <span class="nv">score</span><span class="p">)</span></div><div class='line' id='LC379'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">:test</span> <span class="ss">&#39;&lt;</span></div><div class='line' id='LC380'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">:key</span> <span class="ss">&#39;cdr</span><span class="p">)</span></div><div class='line' id='LC381'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">incf</span> <span class="nv">length</span><span class="p">)</span></div><div class='line' id='LC382'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if </span><span class="p">(</span><span class="k">and </span><span class="nv">limit</span> <span class="p">(</span><span class="nb">&gt; </span><span class="nv">length</span> <span class="nv">limit</span><span class="p">))</span> <span class="nv">do</span></div><div class='line' id='LC383'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">pop</span> <span class="nv">new-list</span><span class="p">)</span></div><div class='line' id='LC384'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">length</span> <span class="nv">limit</span><span class="p">)</span></div><div class='line' id='LC385'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">do </span><span class="p">(</span><span class="nf">tick</span><span class="p">)</span></div><div class='line' id='LC386'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">finally</span> <span class="nv">return</span> <span class="p">(</span><span class="nf">nreverse</span> <span class="nv">new-list</span><span class="p">))))</span></div><div class='line' id='LC387'><br/></div><div class='line' id='LC388'><span class="p">(</span><span class="nf">provide</span> <span class="ss">&#39;fuzzy</span><span class="p">)</span></div><div class='line' id='LC389'><span class="c1">;;; fuzzy.el ends here</span></div></pre></div>
          </td>
        </tr>
      </table>
  </div>

          </div>
        </div>

        <a href="#jump-to-line" rel="facebox" data-hotkey="l" class="js-jump-to-line" style="display:none">Jump to Line</a>
        <div id="jump-to-line" style="display:none">
          <h2>Jump to Line</h2>
          <form accept-charset="UTF-8" class="js-jump-to-line-form">
            <input class="textfield js-jump-to-line-field" type="text">
            <div class="full-button">
              <button type="submit" class="button">Go</button>
            </div>
          </form>
        </div>

      </div>
    </div>
</div>

<div id="js-frame-loading-template" class="frame frame-loading large-loading-area" style="display:none;">
  <img class="js-frame-loading-spinner" src="https://a248.e.akamai.net/assets.github.com/images/spinners/octocat-spinner-128.gif?1360648843" height="64" width="64">
</div>


        </div>
      </div>
      <div class="modal-backdrop"></div>
    </div>

      <div id="footer-push"></div><!-- hack for sticky footer -->
    </div><!-- end of wrapper - hack for sticky footer -->

      <!-- footer -->
      <div id="footer">
  <div class="container clearfix">

      <dl class="footer_nav">
        <dt>GitHub</dt>
        <dd><a href="https://github.com/about">About us</a></dd>
        <dd><a href="https://github.com/blog">Blog</a></dd>
        <dd><a href="https://github.com/contact">Contact &amp; support</a></dd>
        <dd><a href="http://enterprise.github.com/">GitHub Enterprise</a></dd>
        <dd><a href="http://status.github.com/">Site status</a></dd>
      </dl>

      <dl class="footer_nav">
        <dt>Applications</dt>
        <dd><a href="http://mac.github.com/">GitHub for Mac</a></dd>
        <dd><a href="http://windows.github.com/">GitHub for Windows</a></dd>
        <dd><a href="http://eclipse.github.com/">GitHub for Eclipse</a></dd>
        <dd><a href="http://mobile.github.com/">GitHub mobile apps</a></dd>
      </dl>

      <dl class="footer_nav">
        <dt>Services</dt>
        <dd><a href="http://get.gaug.es/">Gauges: Web analytics</a></dd>
        <dd><a href="http://speakerdeck.com">Speaker Deck: Presentations</a></dd>
        <dd><a href="https://gist.github.com">Gist: Code snippets</a></dd>
        <dd><a href="http://jobs.github.com/">Job board</a></dd>
      </dl>

      <dl class="footer_nav">
        <dt>Documentation</dt>
        <dd><a href="http://help.github.com/">GitHub Help</a></dd>
        <dd><a href="http://developer.github.com/">Developer API</a></dd>
        <dd><a href="http://github.github.com/github-flavored-markdown/">GitHub Flavored Markdown</a></dd>
        <dd><a href="http://pages.github.com/">GitHub Pages</a></dd>
      </dl>

      <dl class="footer_nav">
        <dt>More</dt>
        <dd><a href="http://training.github.com/">Training</a></dd>
        <dd><a href="https://github.com/edu">Students &amp; teachers</a></dd>
        <dd><a href="http://shop.github.com">The Shop</a></dd>
        <dd><a href="/plans">Plans &amp; pricing</a></dd>
        <dd><a href="http://octodex.github.com/">The Octodex</a></dd>
      </dl>

      <hr class="footer-divider">


    <p class="right">&copy; 2013 <span title="0.04935s from fe3.rs.github.com">GitHub</span>, Inc. All rights reserved.</p>
    <a class="left" href="https://github.com/">
      <span class="mega-octicon octicon-mark-github"></span>
    </a>
    <ul id="legal">
        <li><a href="https://github.com/site/terms">Terms of Service</a></li>
        <li><a href="https://github.com/site/privacy">Privacy</a></li>
        <li><a href="https://github.com/security">Security</a></li>
    </ul>

  </div><!-- /.container -->

</div><!-- /.#footer -->


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-fullscreen-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="js-fullscreen-contents" placeholder="" data-suggester="fullscreen_suggester"></textarea>
          <div class="suggester-container">
              <div class="suggester fullscreen-suggester js-navigation-container" id="fullscreen_suggester"
                 data-url="/auto-complete/fuzzy-el/suggestions/commit">
              </div>
          </div>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped leftwards" title="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped leftwards"
      title="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      Something went wrong with that request. Please try again.
      <a href="#" class="octicon octicon-remove-close ajax-error-dismiss"></a>
    </div>

    
    
    <span id='server_response_time' data-time='0.04980' data-host='fe3'></span>
    
  </body>
</html>

