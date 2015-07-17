
<!doctype html>
<html lang="en">
<head>
	<title>
		  Responsive Navigation Patterns | Brad Frost	</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width" />
	<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="http://feeds.feedburner.com/brad-frosts-blog">
	<style>
		*{-moz-box-sizing:border-box;-webkit-box-sizing:border-box;box-sizing:border-box}html,body,div,h1,p,ul,li,header,nav{margin:0;padding:0}ul{list-style:none}header,nav,article{display:block}body{font:110%/1.5 "proxima-nova","HelveticaNeue","Helvetica","Arial",sans-serif;color:#100;background:#f6f5de}a{color:#a29e5e;outline:0;text-decoration:none;-webkit-transition:all 0.1s ease-out;transition:all 0.1s ease-out}h1{font-family:"aw-conqueror-carved-one",sans-serif;color:#dedcb9;font-size:1.7em;line-height:1.1;text-rendering:optimizeLegibility;max-width:60rem;margin:0 auto;position:relative;z-index:1;text-shadow:1px 1px 5px rgba(0,0,0,0.5)}@media all and (min-width: 38em){h1{font-size:3.5em}}@media all and (min-width: 44em){h1{font-size:4.5em}}p{margin-bottom:1em}.lc-single:before,.text:before,.lc-single:after,.text:after{content:" ";display:table}.lc-single:after,.text:after{clear:both}[role="main"]{padding-bottom:2em}.lc{margin:0 auto;padding:0 1em;max-width:47em}.lc-single{padding:0 1em;margin:0 auto 1em;max-width:34em;position:relative}.header{padding:1em;overflow:hidden;text-transform:lowercase;text-align:center;text-align:left;position:absolute;z-index:2;left:0;width:100%}.header a{text-decoration:none;color:#f6f5de}@media all and (max-width: 26em){.header{background:rgba(0,0,0,0.2)}}.logo{display:block;margin-bottom:0.5em;text-align:center}@media all and (min-width: 26em){.logo{float:left;margin-bottom:0}}@media all and (min-width: 26em){.nav{float:right}}.nav-list{margin:0;padding:0;text-align:center}.nav-list li{list-style:none;display:inline-block;margin-left:1em}@media all and (min-width: 26em){.nav-list li{text-align:left;float:left}}.leaderboard{padding:8em 0.25em 3em;background:#be6700;text-align:center;margin-bottom:2em;position:relative}@media all and (min-width: 26em){.leaderboard{padding-top:5em;padding-bottom:5em}}.canvas{position:absolute;top:0;left:0;bottom:0;right:0;z-index:0;width:100%;height:100%}.text{font-size:120%}.text img{margin:0 0 1em}@media all and (min-width: 42em){.text .size-large{width:100vw;max-width:none;margin-left:-webkit-calc((100vw - 26.65em) / -2);margin-left:calc((100vw - 26.65em) / -2)}}@media all and (min-width: 64em){.text .size-large{width:1024px;max-width:1024px;margin-left:-11em}}img{max-width:100%;height:auto;display:block;border:1px solid #100}::-webkit-input-placeholder{color:#dedcb9}::-moz-placeholder{color:#dedcb9}::-ms-input{color:#dedcb9}.banner{background:#100;color:#f6f5de;padding:0.7em 0}.banner p{font-size:70%;line-height:1.6;margin:0}@media all and (min-width: 30em){.banner p{font-size:85%;line-height:1.4;margin:0 0 0 4.1em}}.banner a{color:#be6700}.banner .icon-atom{display:none;width:2.5em;height:2.5em;float:left;margin:0.5em 1em 0 0;animation:spin 10s linear 2}.banner .icon-atom svg{width:44px;height:44px}@media all and (min-width: 30em){.banner .icon-atom{display:block}}@media all and (min-width: 50em){.banner .icon-atom{margin-top:0}}
	</style>
	<link rel="shortcut icon" href="http://bradfrost.com/favicon.ico" />
	<link rel="author" href="https://plus.google.com/103751101313992876152/posts">
	<script type="text/javascript" src="//use.typekit.net/crm5eqd.js"></script>
	<script type="text/javascript">try{Typekit.load();}catch(e){}</script>
	</head><body id="page" class="single single-post postid-2684 single-format-standard">
	<div class="banner">
	<div class="lc">
		<a href="http://atomicdesign.bradfrost.com/" class="icon-atom">
			<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
	 viewBox="128.1 125.4 49.2 49.2" enable-background="new 128.1 125.4 49.2 49.2" xml:space="preserve">
			<g id="atom">
				<g>
					<g>
						<circle fill="none" stroke="#F6F5DE" stroke-width="3" stroke-miterlimit="10" cx="152.7" cy="150" r="21.6"/>
						<circle fill="#BE6700" cx="152.7" cy="150" r="12.4"/>
					</g>
					<path fill="#BE6700" d="M175.1,136.6c0,2.9-2.4,5.3-5.3,5.3s-5.3-2.3-5.3-5.3c0-2.9,2.4-5.3,5.3-5.3
						C172.7,131.3,175.1,133.7,175.1,136.6z"/>
				</g>
			</g>
			</svg>
		</a>
		<p>Hey there! I'm writing a book called <a href="http://atomicdesign.bradfrost.com/">Atomic Design</a>, which is all about crafting effective interface design systems. You can <a href="http://atomicdesign.bradfrost.com/">read the latest draft here</a> and support the project by <a href="http://shop.bradfrost.com/products/atomic-design-ebook">preordering the book</a>. Thanks!</p> 
	</div>
</div>    <header role="banner" class="header">
         <a href="/" rel="home" class="logo">Brad Frost</a>
         <nav class="nav" role="navigation">
               <ul class="nav-list">
                    <li><a href="/web/">Web</a></li>
                    <li><a href="/blog/">Blog</a></li>
                    <li><a href="/speaking/">Speaking</a></li>
                    <li><a href="/contact/">Contact</a></li>
               </ul>
          </nav>
    </header>
    <main role="main"><article class="article h-entry">
    
<div class="leaderboard">
      <h1>Responsive Navigation Patterns</h1>
            <canvas id="canvass" class="canvas"></canvas>
</div>    <div class="lc-single">
		<div class="article-content text">
	         <p><strong>Update:</strong> I&#8217;ve also written about <a href="http://bradfrost.com/blog/web/complex-navigation-patterns-for-responsive-design/">complex navigation patterns for responsive design</a>.</p>
<p>Top and left navigations are typical on large screens, but lack of screen real estate on small screens makes for an interesting challenge. As responsive design becomes more popular, it&#8217;s worth looking at the various ways of handling navigation for small screen sizes. Mobile web navigation must strike a balance between quick access to a site&#8217;s information and unobtrusiveness.</p>
<p>Here&#8217;s some of the more popular techniques for handling navigation in responsive designs:</p>
<ul>
<li><a href="#top">Top Nav or &#8220;Do Nothing&#8221; Approach</a></li>
<li><a href="#footer-anchor">The Footer Anchor</a></li>
<li><a href="#select">The Select Menu</a></li>
<li><a href="#toggle">The Toggle</a></li>
<li><a href="#left">The Left Nav Flyout</a></li>
<li><a href="#footer-only">The Footer Only</a></li>
<li><a href="#hide">The &#8220;Hide and Cry&#8221;</a></li>
</ul>
<p>There are of course advantages and disadvantages of each method and definitely some things to look out for when choosing what method&#8217;s right for your project.</p>
<h2 id="top">Top Nav or &#8220;Do Nothing&#8221; Approach</h2>
<p><a href="http://bradfrost.com/wp-content/uploads/2012/02/nav-tim2.png"><img src="http://bradfrost.com/wp-content/uploads/2012/02/nav-tim2-650x295.png" alt="Tim Kadlec Responsive Navigation" width="650" height="295" class="alignnone size-medium wp-image-2825" /></a></p>
<p>One of the easiest-to-implement solutions for navigation is to simply keep it at the top.  Because of its ease of implementation, it&#8217;s found on many (maybe even most) responsive sites right now.</p>
<h3>Pros</h3>
<ul>
<li><strong>Easy to implement</strong>&#8211;  you can implement your large-screen site almost as-is.</li>
<li><strong>No Javascript dependencies</strong> &#8211; ensuring maximum compatibility</li>
<li><strong>No back-breaking CSS maneuvers required</strong></li>
<li><strong>No tripping over your source order</strong> &#8211; no need to jump through hoops to shift nav lists around in the source. It flows au naturel.</li>
</ul>
<h3>Cons</h3>
<ul>
<li><strong>Height issues</strong>&#8211; <a href="http://andmag.se/2012/01/height-matters/">Height matters in mobile</a>. As <a href="http://www.abookapart.com/products/mobile-first">Luke&#8217;s book</a> explains, content-first, nav-second is preferred for mobile web experiences. You want to get the users to the meat-and-potatoes content as quickly as possible. That means getting the navigation out of user&#8217;s way so they can focus on the core information on the page. It can also be confusing when all the core content is cut off:  <div id="attachment_2713" style="width: 660px" class="wp-caption alignnone"><a href="http://bradfrost.com/wp-content/uploads/2012/02/confab-nav.png"><img src="http://bradfrost.com/wp-content/uploads/2012/02/confab-nav-650x325.png" alt="confab responsive nav" title="confab-nav" width="650" height="325" class="size-medium wp-image-2713" /></a><p class="wp-caption-text">The site doesn&#039;t look different from page to page and doesn&#039;t expose the core content soon enough</p></div></li>
<li><strong>Not scalable</strong> &#8211; What happens when you want to add a new section to your site? Where the nav fits neatly on one line now, what happens when your client says you need to add &#8220;products and services&#8221; to the nav? Or when you need to translate the menu to German?</li>
<li><strong>Fat Fingers</strong> &#8211; Cramming links too closely together can easily result in unwanted proximity clicks</li>
<li><strong>Cross-device issues</strong> &#8211; While text might look great on an iPhone, devices have different ways of rendering fonts. Sites can look great on an iPhone but break when viewed on other platforms: <br/><div id="attachment_2767" style="width: 660px" class="wp-caption alignnone"><a href="http://bradfrost.com/wp-content/uploads/2012/02/nav-break2.png"><img src="http://bradfrost.com/wp-content/uploads/2012/02/nav-break2-650x418.png" alt="Responsive navigation breaking to multiple lines on small screens" title="Responsive navigation breaking to multiple lines on small screens" width="650" height="418" class="size-medium wp-image-2767" /></a><p class="wp-caption-text">Responsive navigation breaking to multiple lines on small screens</p></div></li>
</ul>
<h3>In the Wild</h3>
<ul>
<li><a href="http://yiibu.com">Yiibu</li>
<li><a href="http://trentwalton.com">Trent Walton</li>
<li><a href="http://timkadlec.com">Tim Kadlec</li>
<li><a href="http://ethanmarcotte.com">Ethan Marcotte</li>
<li><a href="http://bradfrost.com">Brad Frost Web</a></li>
</ul>
<h3>Resources</h3>
<ul>
<li><a href="http://andmag.se/2012/01/height-matters/">Height Matters</a> by <a href="http://twitter.com/andmag">@andmag</a></li>
<li><a href="http://alwaystwisted.com/post.php?s=2011-02-20-dont-let-your-menu-take-over">Don&#8217;t Let Your Menu Take Over</a> by <a href="http://twitter.com/StuRobson">@StuRobson</a></li>
</ul>
<h2 id="footer-anchor">The Footer Anchor</h2>
<p><a href="http://bradfrost.com/wp-content/uploads/2012/02/grey.png"><img src="http://bradfrost.com/wp-content/uploads/2012/02/grey-650x271.png" alt="Grey Goose Responsive Navigation" title="Grey Goose Responsive Navigation" width="650" height="271" class="alignnone size-medium wp-image-2814" /></a></p>
<p>This clever solution keeps the nav list at the footer of the site, while the header contains a simple anchor link pointing to the footer nav. This approach clears up a lot of room for the core content while still providing quick access to the navigation.</p>
<h3>Pros</h3>
<ul>
<li><strong>Easy to implement</strong>&#8211; Simple anchor on top. Nav list on the bottom. That&#8217;s pretty damn easy.</li>
<li><strong>No Javascript dependency</strong>&#8211; which means less testing and far better support.
<li><strong>Little CSS work required to scale up</strong> &#8211; Thanks to absolute or fixed positioning, moving the footer nav up to the top for large screens is a piece of cake.</li>
<li><strong>Single button in header</strong>&#8211; A simple menu icon or link takes up very little room in the header, which frees up plenty of space for the core content</li>
</ul>
<h3>Cons</h3>
<ul>
<li><strong>Anchor jump can be awkward/disorienting</strong> &#8211; Quickly jumping to the footer of the site can be a bit disorientating. </li>
<li><strong>Not elegant</strong>&#8211; this seems weird to say, but other methods like the <a href="#toggle">toggle method</a> have a bit of sexy to them. A jarring jump, while awesomely practical, isn&#8217;t the elegant interaction mobile users have gotten used to from interacting with those highly-polished native apps.</li>
</ul>
<h3>In the Wild</h3>
<ul>
<li><a href="http://greygoose.com">Grey Goose</a></li>
<li><a href="http://contentsmagazine.com/">Contents Magazine</a></li>
<li><a href="https://bagcheck.com/home">Bagcheck</a> (I know <a href="http://www.lukew.com/ff/entry.asp?1390">it&#8217;s not responsive</a>, but it&#8217;s where the technique was popularized)</li>
</ul>
<h3>Resources</h3>
<ul>
<li><a href="http://webdesign.tutsplus.com/tutorials/htmlcss-tutorials/a-simple-responsive-mobile-first-navigation/">A Simple, Responsive, Mobile First Navigation</a></li>
<li><a href="http://www.abookapart.com/products/mobile-first">Mobile First Book</a></li>
</ul>
<h2 id="select">The Select Menu</h2>
<p><a href="http://bradfrost.com/wp-content/uploads/2012/02/nav-vil.png"><img src="http://bradfrost.com/wp-content/uploads/2012/02/nav-vil-650x295.png" alt="Viljamis Responsive Nav" title="Viljamis Responsive Nav" width="650" height="295" class="alignnone size-medium wp-image-2816" /></a></p>
<p>One way of taming nav links gone wild is to transform a list of links into a select menu for small screens. This avoids the problems the <a href="#top">top nav approach</a> presents and is a clever way to save real estate.</p>
<h3>Pros</h3>
<ul>
<li><strong>Frees up plenty of space</strong>&#8211; a select menu definitely takes up a lot less space than a horizontal or vertical list of links </li>
<li><strong>Keeps interactions in the header</strong>&#8211; instead of a footer nav, the select menu keeps the navigation functionality in the header, where users are used to seeing web navigation</li>
<li><strong>Easily Recognizable</strong>&#8211; a select menu with a clear label saying &#8220;navigation&#8221; or &#8220;menu&#8221; is definitely easy for users to figure out.  </li>
<li><strong>Pulls up native controls</strong>&#8211; each mobile browser will handle select menus their own way. Touch devices will pull up the nav in a touch friendly list, while trackball/d-pad/pearl devices will pull up a select menu more conducive to that particular input method.</li>
</ul>
<h3>Cons</h3>
<ul>
<li><strong>Lack of styling control</strong>&#8211; select menus are a pain in the ass to style. Each browser handles them in their own, usually clunky, way. Forget about cross-browser styling and coming out with anything that looks halfway consistent. As a result, the select menu can stick out like a sore thumb and really dirty up an otherwise good-lookin&#8217; design.</li>
<li><strong>Potentially confusing</strong> &#8211; Users are used to select menus in the context of filling out a form, but I&#8217;m not sure they&#8217;d grasp a form element out of that context. This is simply a hunch, so it would be interesting to test.</li>
<li><strong>Handling subnav items</strong>&#8211; nested lists handled by select menus can look weird. Child categories are usually handled by <a href="http://media.smashingmagazine.com/wp-content/uploads/2011/12/prog-resp-nav_13.jpg">indenting with dashes</a>, and while it might get the point across I see it as potentially confusing and a little ugly.</li>
<li><strong>Javascript dependency</strong>&#8211; It doesn&#8217;t require too much JS to convert the list to a select menu, but it&#8217;s worth pointing out simply because mobile browsers do the darndest things. But again, the technique is pretty cut and dry so there shouldn&#8217;t be too many hang ups using this approach.</li>
</ul>
<h3>Resources</h3>
<ul>
<li><a href="http://tinynav.viljamis.com/">TinyNav</a> by <a href="https://twitter.com/viljamis">@viljamis</a></li>
<li><a href="http://css-tricks.com/convert-menu-to-dropdown/">Convert a Menu to a Dropdown for Small Screens</a></li>
<li><a href="http://coding.smashingmagazine.com/2012/02/13/progressive-and-responsive-navigation/">Progressive and Responsive Navigation</a></li>
<li><a href="https://github.com/mattkersley/Responsive-Menu">Responsive Menu</a></li>
</ul>
<h3>In the Wild</h3>
<ul>
<li><a href="http://viljamis.com/">Viljami Salminen</a></li>
<li><a href="http://retreats4geeks.com/">Retreats 4 Geeks</a></li>
<li><a href="http://www.fivesimplesteps.com">Five Simple Steps</a></li>
<li><a href="http://www.performancemarketingawards.co.uk/">Performance Marketing Awards</a></li>
</ul>
<h2 id="toggle">The Toggle</h2>
<p><a href="http://bradfrost.com/wp-content/uploads/2012/02/nav-starbucks.png"><img src="http://bradfrost.com/wp-content/uploads/2012/02/nav-starbucks-650x295.png" alt="Starbucks Responsive Navigation" title="Starbucks Responsive Navigation" width="650" height="295" class="alignnone size-medium wp-image-2828" /></a></p>
<p>The toggle is similar to the <a href="#footer-anchor">footer anchor approach</a>, but instead of jumping down to an anchor at the bottom of the page, the menu slides open right in the header. It&#8217;s a good-looking approach and is relatively easy to implement.</p>
<h3>Pros</h3>
<ul>
<li><strong>Keeps the user in place</strong>&#8211; Where the footer anchor jumps suddenly, the toggle menu simply appears in place, which doesn&#8217;t disorient the user.</li>
<li><strong>Elegant</strong>&#8211; This is definitely one of the more classy approaches. No awkward forms or page jumps, just a smooth animated flyout or basic show/hide.</li>
<li><strong>Easy to scale up</strong>&#8211; All you need to do is hide the mobile trigger and show the nav list when the appropriate breakpoint is reached and you have yourself a normal large screen nav. All this can be accomplished with CSS.</li>
</ul>
<h3>Cons</h3>
<ul>
<li><strong>Animation performance</strong>&#8211; Your mileage will vary when doing any sort of animation on mobile devices. Android is notoriously bad with CSS animations and so things might not be as smooth as you&#8217;d like. Also, for what it&#8217;s worth I&#8217;ve recently been animating <a href="http://jsfiddle.net/leaverou/zwvNY/">max-height</a> which seems to work well.</li>
<li><strong>Javascript dependency</strong>&#8211; Again this approach relies on a bit of Javascript in order to trigger the toggle, but it&#8217;s minimal. I have one Blackberry test device that refuses to listen to any of this stuff, but most browsers, including proxy browsers like Opera Mini and Dolphin Mini, handle it just fine.</li>
</ul>
<h3>In the Wild</h3>
<ul>
<li><a href="http://www.starbucks.com/">Starbucks</a></li>
<li><a href="http://mobilewebbestpractices.com">Mobile Web Best Practices</a></li>
<li><a href="http://twitter.github.com/bootstrap/">Twitter Bootstrap</a></li>
</ul>
<h3>Resources</h3>
<ul>
<li><a href="http://jasonweaver.name/lab/flexiblenavigation/">FlexNav</a>
<li><a href="http://filamentgroup.com/lab/responsive_design_approach_for_navigation/">A Responsive Design Approach for Navigation, Part 1</a> by <a href="http://twitter.com/filamentgroup">@filamentgroup</a></li>
</ul>
<h2 id="left">The Left Nav Flyout</h2>
<p><a href="http://bradfrost.com/wp-content/uploads/2012/02/nav-obama.png"><img src="http://bradfrost.com/wp-content/uploads/2012/02/nav-obama-650x295.png" alt="Obama responsive navigation" title="Obama responsive navigation" width="650" height="295" class="alignnone size-medium wp-image-2818" /></a></p>
<p>Facebook popularized a left navigation for mobile that&#8217;s quite unique. The nav is accessed by a menu icon, which reveals a tray that <a href="http://stephanierieger.com/wp-content/uploads/2012/01/sliding-menu.png">slides in from the left</a> and moves the main content over to the right. </p>
<h3>Pros</h3>
<ul>
<li><strong>Lots of space</strong>&#8211; While other nav techniques don&#8217;t work very well if you have a lot of list items, this approach provides a lot of space to expand. I think that&#8217;s why Facebook took to it.</li>
<li><strong>Good looking</strong>&#8211; This menu is very sophisticated and advanced, so it definitely has a wow factor to it.</li>
<li><strong>Facebook conventions </strong>&#8211; Facebook mobile users will be used to this pattern already since the web and native Facebook mobile apps utilize this left tray system.</li>
</ul>
<h3>Cons</h3>
<ul>
<li><strong>Advanced</strong>&#8211; While the other methods modify simple elements, this shelf method has a lot of moving parts. As <a href="http://stephanierieger.com/a-plea-for-progressive-enhancement/">Stephanie Rieger pointed out</a>, the Obama site navigation broke on everything but the most sophisticated devices. If your project is meant for a broader audience, you want to be very careful if choosing this approach.</li>
<li><strong>Doesn&#8217;t scale well</strong>&#8211; this method is quite unique to mobile and doesn&#8217;t necessarily scale up to large screens easily. You can run a risk of essentially maintaining two separate navs for small and large screens.</li>
<li><strong>Potentially confusing</strong>&#8211; When I first saw Facebook&#8217;s new mobile nav, I actually thought it was broken. Keeping a hint of the content on the right seems a bit weird to me, but this is all personal preference.</li>
</ul>
<h3>In The Wild</h3>
<ul>
<li><a href="http://www.barackobama.com/">Barack Obama</a></li>
</ul>
<h3>Resources</h3>
<ul>
<li><a href="http://stephanierieger.com/a-plea-for-progressive-enhancement/">A Plea for Progressive Enhancement</a></li>
</ul>
<h2 id="footer-only">The Footer-Only</h2>
<p><a href="http://bradfrost.com/wp-content/uploads/2012/02/nav-fray.png"><img src="http://bradfrost.com/wp-content/uploads/2012/02/nav-fray-650x295.png" alt="Fray Responsive Nav" title="Fray Responsive Nav" width="650" height="295" class="alignnone size-medium wp-image-2820" /></a></p>
<p>The footer-only navigation is similar to the footer anchor approach, only without the anchor in the header. It follows the content-first, nav-second model, however it requires mobile users to scroll all the way to the bottom in order to navigate the site.</p>
<h3>Pros</h3>
<ul>
<li><strong>Frees up header space</strong> &#8211; It follows the content-first, nav-second model, but&#8230;</li>
</ul>
<h3>Cons</h3>
<ul>
<li><strong>Difficult to Discover</strong>&#8211; Users (both on small and large screens) might not discover there&#8217;s a menu sitting in the footer.</li>
<li><strong>Difficult to Access</strong>&#8211; Mobile users have to scroll the entire way down a page (which might be very long) just to get around the site.</li>
</ul>
<h3>In The Wild</h3>
<ul>
<li><a href="http://pea.rs/">Pears</a></li>
<li><a href="http://fray.com/">Fray</a></li>
</ul>
<h2 id="hide">The &#8220;Hide N&#8217; Cry&#8221;</h2>
<p><a href="http://bradfrost.com/wp-content/uploads/2012/02/nav-auth.png"><img src="http://bradfrost.com/wp-content/uploads/2012/02/nav-auth-650x295.png" alt="Authentic Jobs responsive nav" title="Authentic Jobs responsive nav" width="650" height="295" class="alignnone size-medium wp-image-2823" /></a></p>
<p>Follow this rule: <strong>Don&#8217;t penalize users for visiting your site on smaller devices</strong>.  <a href="http://globalmoxie.com/jhc/prez/mobile-myths.pdf">It&#8217;s a myth</a> <small>(PDF)</small> that mobile users don&#8217;t want/need certain information.  Mobile users will do anything and everything a desktop user will do, provided it&#8217;s presented in a usable way. </p>
<h3>Pros</h3>
<ul>
<li><strong>Clears up plenty of space</strong>&#8211; By removing the nav for small screens, you free up a lot of space! But that comes at a cost&#8230;</li>
</ul>
<h3>Cons</h3>
<ul>
<li><strong>Removes content/functionality for mobile users</strong>&#8211; Hiding links and content is not OK. Responsive advocates say that responsive design removes many of the <a href="http://wtfmobileweb.com">content disparities and experiential nightmares</a> that can come from separate mobile sites, but if a responsive site is hiding content for mobile users it&#8217;s no better.</li>
<li><strong>Adds extra page weight</strong>&#8211; Adding <code>display: none</code> for elements that are presumably unneeded for mobile doesn&#8217;t make it disappear. The code/images/whatever still gets download by mobile devices (which of course are more likely to be on slower connections).</li>
<li><strong>Harder to maintain</strong>&#8211; Two separate navigations for small and large screens becomes a burden when maintaining the site.</li>
</ul>
<h3>In The Wild</h3>
<ul>
<li><a href="http://www.authenticjobs.com/">Authentic Jobs</a></li>
<li><a href="http://rourkery.com/">rourkery.com</a> </li>
<li>A previous version of the Obama responsive site</li>
</ul>
<h3>Resources</h3>
<ul>
<li><a href="http://timkadlec.com/2012/02/media-query-asset-downloading-tests/">Media Query and Asset Tests</a></li>
</ul>
<h2>Considerations</h2>
<p>Ultimately, mobile navigation should be like a good friend: there when you need them, but cool enough to give you your space. A bad friend is someone who&#8217;s not there when you need someone to talk to (when navigation is absent or hard to find), or someone who&#8217;s obnoxious because they&#8217;re always around and taking up space (dude, get off my couch).  Finding the balance between accessible navigation and mobile screen real estate is an art that we&#8217;re all trying to sort out. I&#8217;d love to hear your thoughts.</p>
<h2>Update</h2>
<p>Right after this was written, it looks like there&#8217;s been some other great posts discussing responsive navigation. Check out:</p>
<ul>
<li><a href="http://filamentgroup.com/lab/responsive_design_approach_for_navigation/">A Responsive Design Approach for Navigation, Part 1</a> by <a href="http://twitter.com/filamentgroup">@filamentgroup</a> Absolutely wonderful step by step guide to implementing the toggle approach.</li>
<li><a href="http://inspectelement.com/tutorials/pull-down-for-navigation-a-responsive-solution/">Pull Down for Navigation</a> by <a href="http://twitter.com/inspectelement">@inspectelement</a>, an clever approach that reveals the navigation as the user pulls down the top of the page. Quick pros and cons:<br />
<h3>Pros:</h3>
<ul>
<li><strong>Sexy as hell</strong>.</li>
<li><strong>Great use of screen real estate</strong>.</li>
<li>Takes advantage of an <strong>existing smartphone convention</strong> of pulling down the top of the page to reveal more.</li>
</ul>
<h3>Cons</h3>
<ul>
<li><strong>Potentially confusing</strong>&#8211; Mobile users are used to pulling down the top of the page to refresh a list of content items, not to reveal a navigation.</li>
<li><strong>Relatively Advanced</strong>&#8211; Right now the demo only is working in its entirety on iOS. I checked Chrome for Android, Android stock browser &#038; Opera Mini and they all kind of worked, but not fully. I&#8217;m sure this solution could be progressively enhanced to accommodate more browsers.</li>
<li><strong>Explicit Instruction Required</strong>&#8211; you have to explicitly tell the user to pull down to reveal the nav, which is fine but could potentially be awkward in the site header.</li>
</ul>
<p>All in all these are minor points, but I&#8217;d love to see it working across more browsers!</li>
</ul>
<p>Also, be sure to read about how to handle <a href="http://bradfrost.com/blog/web/complex-navigation-patterns-for-responsive-design/">complex navigation for responsive designs</a>.</p>
	         	    </div><!--end .text-->
	
	     <!-- Carbon Ad -->
 <script async type="text/javascript" src="//cdn.carbonads.com/carbon.js?zoneid=1696&serve=CVYD42T&placement=bradfrostwebcom" id="_carbonads_js"></script>
<!-- End Carbon Ad -->
		<footer class="article-footer">
	<p>Posted on <a href="http://bradfrost.com/blog/web/responsive-nav-patterns/"><time datetime="2012-02-24">02.24.12</time></a></p>
	<p>Tags: <a href="http://bradfrost.com/blog/tag/adaptive/" rel="tag">adaptive</a>, <a href="http://bradfrost.com/blog/tag/navigation/" rel="tag">navigation</a>, <a href="http://bradfrost.com/blog/tag/responsive-web-design/" rel="tag">responsive web design</a>, <a href="http://bradfrost.com/blog/tag/ux/" rel="tag">ux</a></p>
</footer><!--end .post-footer-->    </div>
</article>
	
	

<div id="comments" class="comments">
	<div class="lc-single">
		<h3>103 Comments</h3>
		<ol class="c-list">
			<li class="comment even thread-even depth-1" id="comment-1395">
<div class="c-meta">
	<img alt='' src='http://2.gravatar.com/avatar/519c9ae14594667d1580086d5e9ec60f?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://2.gravatar.com/avatar/519c9ae14594667d1580086d5e9ec60f?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.wesbos.com' rel='external nofollow' class='url'>Wes Bos</a></h4>
	<time class="c-time"><a href="#comment-1395" title="">02.24.12</a></time>
</div>
<div class="c-text">
	<p>Awesome post, thanks a ton for this <img src="http://bradfrost.com/wp-includes/images/smilies/simple-smile.png" alt=":)" class="wp-smiley" style="height: 1em; max-height: 1em;" /></p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-odd thread-alt depth-1" id="comment-1396">
<div class="c-meta">
	<img alt='' src='http://0.gravatar.com/avatar/01c2f213035b363f8957d1b5053079ae?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://0.gravatar.com/avatar/01c2f213035b363f8957d1b5053079ae?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.jasonagross.com' rel='external nofollow' class='url'>Jason Gross</a></h4>
	<time class="c-time"><a href="#comment-1396" title="">02.24.12</a></time>
</div>
<div class="c-text">
	<p>Great write up <img src="http://bradfrost.com/wp-includes/images/smilies/simple-smile.png" alt=":)" class="wp-smiley" style="height: 1em; max-height: 1em;" /> </p>
<p>I would consider it worth mentioning that this is an overview of options most likely not intended to be mutually exclusive. CSS in general (not just CSS3) gives us a lot of power to manipulate the layout of a page so the possibilities of navigation extend beyond these options. A mix-and-match approach using these options might be called for if you are working on a site with complex navigation or loads of content. </p>
<p>A good example of this is the Boston Globe site. They would probably be subscribed to the &#8216;toggle&#8217; method for the primary navigation but more of the &#8216;do nothing&#8217; method in the footer of the site. </p>
<p>When building out responsive navigation systems try to look past just &#8216;what can we do with the HTML structure we have&#8217; but rather &#8216;what is the best solution at this resolution from an experience standpoint&#8217;. This might present more hoops to jump through in your HTML, CSS or JS but a better final result.</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-even depth-1" id="comment-1397">
<div class="c-meta">
	<img alt='' src='http://2.gravatar.com/avatar/5569a5618f71091e27e58b1b69fc0d09?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://2.gravatar.com/avatar/5569a5618f71091e27e58b1b69fc0d09?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://davidgoss.co.uk/' rel='external nofollow' class='url'>David Goss</a></h4>
	<time class="c-time"><a href="#comment-1397" title="">02.24.12</a></time>
</div>
<div class="c-text">
	<p>Hi Brad</p>
<p>Making navigation work is the one time I&#8217;ll allow myself a bit of <code>display:none</code> to help along (I&#8217;m not hiding actual content, so if you squint it&#8217;s kind of okay).</p>
<p>So, on a design where a footer anchor will work well for the small screen but I want the navigation at the top on larger screens (but where absolute or fixed positioning isn&#8217;t appropriate), I include the navigation twice in the markup (please, hear me out). On the default layout (mobile first), the top one isn&#8217;t shown, but the bottom one is, along with &#8220;go to nav&#8221; and &#8220;back to top&#8221; anchor links where appropriate. Then when the screen is large enough, the bottom one and anchor links are hidden and the top one is shown.</p>
<p>One thing that always makes me scratch my head is what to label the &#8220;go to nav&#8221; anchor link. So far I&#8217;ve done no better than &#8220;Menu&#8221;. Also, I&#8217;m never sure what icon might be helpful to use next to it.</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-odd thread-alt depth-1" id="comment-1398">
<div class="c-meta">
	<img alt='' src='http://1.gravatar.com/avatar/7a586ac17838c482b23972fc6ea68259?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://1.gravatar.com/avatar/7a586ac17838c482b23972fc6ea68259?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://responsivedesign.ca' rel='external nofollow' class='url'>Aidan Foster</a></h4>
	<time class="c-time"><a href="#comment-1398" title="">02.24.12</a></time>
</div>
<div class="c-text">
	<p>This is a great breakdown and very useful. I attended Luke Wroblewski&#8217;s mobile first workshop yesterday and as he reviewed the navigation patterns it became clear that in my own site there was much room for improvement. We implemented the top nav pattern and on smartphones it&#8217;s taking up way too much space. Give &#8217;em content &#8211; Not menus. (Looks like my site’s been that friend that been hanging around too much&#8230;)</p>
<p>In the workshop there were also many, many questions about coordinating UI, design and development teams. Breaking out the patterns like you have is a great way to help kick start these early team planning meetings for a new responsive site. Thank You.</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-even depth-1" id="comment-1399">
<div class="c-meta">
	<img alt='' src='http://0.gravatar.com/avatar/3ed0e686f9c7634b3a406ae2b2969b52?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://0.gravatar.com/avatar/3ed0e686f9c7634b3a406ae2b2969b52?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://dunkman.org' rel='external nofollow' class='url'>Andrew Dunkman</a></h4>
	<time class="c-time"><a href="#comment-1399" title="">02.24.12</a></time>
</div>
<div class="c-text">
	<p>Nice article! It might be worth noting that the select menu need not have a Javascript dependency if you duplicate elements, adding a list of links to the mobile site or a select box to the full site and show/hide. #pickyourevil</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-odd thread-alt depth-1" id="comment-1400">
<div class="c-meta">
	<img alt='' src='http://2.gravatar.com/avatar/574092a3825e277dc71d48b0b676bcab?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://2.gravatar.com/avatar/574092a3825e277dc71d48b0b676bcab?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.webmeadow.com' rel='external nofollow' class='url'>Eileen</a></h4>
	<time class="c-time"><a href="#comment-1400" title="">02.24.12</a></time>
</div>
<div class="c-text">
	<p>We took the &#8220;top nav&#8221; approach on a recent site, but with a twist. On thisiscounterculture.com/team , you can see that the top nav (and secondary nav) exist but we&#8217;ve hidden the main page title on subpages, allowing the active menu item to serve as page title instead.  Obviously this can&#8217;t work for sites with lots of pages, but it worked out nicely (at least, we think so) on this smaller site.</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-even depth-1" id="comment-1401">
<div class="c-meta">
	<img alt='' src='http://2.gravatar.com/avatar/b4a02bdf0d096503f9fe95fcceaa8b23?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://2.gravatar.com/avatar/b4a02bdf0d096503f9fe95fcceaa8b23?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://torkiljohnsen.com' rel='external nofollow' class='url'>Torkil Johnsen</a></h4>
	<time class="c-time"><a href="#comment-1401" title="">02.24.12</a></time>
</div>
<div class="c-text">
	<p>I&#8217;m currently working on a site which by default will use the nav at bottom approach, with top anchor, as a fallback, but use the left slideout nav (w/swipe support) as the main nav. Also thinking about adding a left swipe as well, to reveal contact info for instance. </p>
<p>Should work on any browser and progressively enhance the UX <img src="http://bradfrost.com/wp-includes/images/smilies/simple-smile.png" alt=":)" class="wp-smiley" style="height: 1em; max-height: 1em;" /></p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-odd thread-alt depth-1" id="comment-1403">
<div class="c-meta">
	<img alt='' src='http://1.gravatar.com/avatar/4ec9344a1829b40b008ce225dceafd81?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://1.gravatar.com/avatar/4ec9344a1829b40b008ce225dceafd81?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.designingstories.com' rel='external nofollow' class='url'>Sergio Acosta</a></h4>
	<time class="c-time"><a href="#comment-1403" title="">02.24.12</a></time>
</div>
<div class="c-text">
	<p>Great post indeed. In a recent project (www.christianlawfirm.co.uk) I combined the footer anchor and subnav items with a select menu. The select menu helped me to resolve a huge navigation bar. It was difficult to style, but I think the pulling up of native controls outweights the cons. Many thanks for sharing.</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-even depth-1" id="comment-1405">
<div class="c-meta">
	<img alt='' src='http://0.gravatar.com/avatar/65fb0cbb2b0186d580059158c298647f?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://0.gravatar.com/avatar/65fb0cbb2b0186d580059158c298647f?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard">Utwo</h4>
	<time class="c-time"><a href="#comment-1405" title="">02.24.12</a></time>
</div>
<div class="c-text">
	<p>Dind&#8217;t know that are so many ways&#8230; Thank you!</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-odd thread-alt depth-1" id="comment-1406">
<div class="c-meta">
	<img alt='' src='http://0.gravatar.com/avatar/c0880d8dbbfff229bd5ff579fcd71677?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://0.gravatar.com/avatar/c0880d8dbbfff229bd5ff579fcd71677?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard">Kevin</h4>
	<time class="c-time"><a href="#comment-1406" title="">02.24.12</a></time>
</div>
<div class="c-text">
	<p>Nice write up Brad.</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-even depth-1" id="comment-1408">
<div class="c-meta">
	<img alt='' src='http://0.gravatar.com/avatar/318fa62dec652c38a81a0aecba23093e?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://0.gravatar.com/avatar/318fa62dec652c38a81a0aecba23093e?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.galveston.se' rel='external nofollow' class='url'>Johan</a></h4>
	<time class="c-time"><a href="#comment-1408" title="">02.25.12</a></time>
</div>
<div class="c-text">
	<p>Thanks, great resource for upcoming projects!</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-odd thread-alt depth-1" id="comment-1414">
<div class="c-meta">
	<img alt='' src='http://1.gravatar.com/avatar/dd60af940773439f1b0c684a3af6db68?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://1.gravatar.com/avatar/dd60af940773439f1b0c684a3af6db68?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard">Christof</h4>
	<time class="c-time"><a href="#comment-1414" title="">02.25.12</a></time>
</div>
<div class="c-text">
	<p>What about using optgroup for select? How is the support for this? Admittedly no real 2 level nav support either as optgroup labels are not links but should be easy to add level 1 item as 1st item in each optgroup. Think this would be nicer than using &#8220;-&#8221; prefixes? Just don&#8217;t know how well mobile browser support is, IE9 on WP7 Mango does them well and nice it seems, have no Android or iOS around&#8230;</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-even depth-1" id="comment-1415">
<div class="c-meta">
	<img alt='' src='http://2.gravatar.com/avatar/5be047f7a7d4903252d6aa268d2ed6c9?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://2.gravatar.com/avatar/5be047f7a7d4903252d6aa268d2ed6c9?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://mikeabdullah.net' rel='external nofollow' class='url'>Mike Abdullah</a></h4>
	<time class="c-time"><a href="#comment-1415" title="">02.25.12</a></time>
</div>
<div class="c-text">
	<p>Great article. Just want to point out that &#8220;the toggle&#8221; is missing from the table of contents</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-odd thread-alt depth-1" id="comment-1417">
<div class="c-meta">
	<img alt='' src='http://0.gravatar.com/avatar/c5ca4acbf5dc012c5e87ef2f40a6b2a9?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://0.gravatar.com/avatar/c5ca4acbf5dc012c5e87ef2f40a6b2a9?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.insitedesignlab.com/blog' rel='external nofollow' class='url'>Jon</a></h4>
	<time class="c-time"><a href="#comment-1417" title="">02.25.12</a></time>
</div>
<div class="c-text">
	<p>Amazing post. Thanks for putting the time in. I never knew Starbucks had a responsive design!</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-even depth-1" id="comment-1423">
<div class="c-meta">
	<img alt='' src='http://0.gravatar.com/avatar/f372f3c8b2b99804358cad4c0fa2a91a?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://0.gravatar.com/avatar/f372f3c8b2b99804358cad4c0fa2a91a?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.squareonemd.co.uk' rel='external nofollow' class='url'>Elliott from the design agency</a></h4>
	<time class="c-time"><a href="#comment-1423" title="">02.26.12</a></time>
</div>
<div class="c-text">
	<p>Great article never thought about categorising these responsive techniques or the pros and cons of each technique &#8211; thanks</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-odd thread-alt depth-1" id="comment-1427">
<div class="c-meta">
	<img alt='' src='http://1.gravatar.com/avatar/de72d419e1f2a366ad9fc2c29a6a82df?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://1.gravatar.com/avatar/de72d419e1f2a366ad9fc2c29a6a82df?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://bitlucid.com' rel='external nofollow' class='url'>Roy</a></h4>
	<time class="c-time"><a href="#comment-1427" title="">02.26.12</a></time>
</div>
<div class="c-text">
	<p>That top-menu, bottom anchor one is a great idea, I&#8217;m going to try implementing it soon.  And the advantage is that you can just have a normal footer and then collapse the header at low screen widths.</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-even depth-1" id="comment-1428">
<div class="c-meta">
	<img alt='' src='http://2.gravatar.com/avatar/8bf0f962562880331880b7db99f89312?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://2.gravatar.com/avatar/8bf0f962562880331880b7db99f89312?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://launchco.com' rel='external nofollow' class='url'>Richard Metzler</a></h4>
	<time class="c-time"><a href="#comment-1428" title="">02.26.12</a></time>
</div>
<div class="c-text">
	<p>What do you think about the toggle I coded for <a href="http://launchco.com" rel="nofollow">http://launchco.com</a> ?</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-odd thread-alt depth-1" id="comment-1429">
<div class="c-meta">
	<img alt='' src='http://1.gravatar.com/avatar/af3eefd5a3671d5bbd67ac389f8de9d5?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://1.gravatar.com/avatar/af3eefd5a3671d5bbd67ac389f8de9d5?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://peteschuster.com' rel='external nofollow' class='url'>Pete</a></h4>
	<time class="c-time"><a href="#comment-1429" title="">02.26.12</a></time>
</div>
<div class="c-text">
	<p>well done</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-even depth-1" id="comment-1430">
<div class="c-meta">
	<img alt='' src='http://2.gravatar.com/avatar/eed81a6444b89cee3c28ca01a81377d7?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://2.gravatar.com/avatar/eed81a6444b89cee3c28ca01a81377d7?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.htmlcut.com' rel='external nofollow' class='url'>Sean</a></h4>
	<time class="c-time"><a href="#comment-1430" title="">02.26.12</a></time>
</div>
<div class="c-text">
	<p>Great post, to the point and very instructive! Among the plenty of posts about responsive web design this is one of the most useful at the moment</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-odd thread-alt depth-1" id="comment-1431">
<div class="c-meta">
	<img alt='' src='http://1.gravatar.com/avatar/153a297bd6ffbedae606e29bf7b4854a?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://1.gravatar.com/avatar/153a297bd6ffbedae606e29bf7b4854a?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.fornacestudio.com' rel='external nofollow' class='url'>francesco frapporti</a></h4>
	<time class="c-time"><a href="#comment-1431" title="">02.26.12</a></time>
</div>
<div class="c-text">
	<p>This list rocks! I&#8217;d just like to point out that toggle menus don&#8217;t necessarily need javascript, but can be written with pure css and media queries.</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-even depth-1" id="comment-1432">
<div class="c-meta">
	<img alt='' src='http://2.gravatar.com/avatar/22ee427f209f34b1601b3fc65a6691b8?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://2.gravatar.com/avatar/22ee427f209f34b1601b3fc65a6691b8?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='https://twitter.com/tutkiosk' rel='external nofollow' class='url'>Dinesh Verma</a></h4>
	<time class="c-time"><a href="#comment-1432" title="">02.26.12</a></time>
</div>
<div class="c-text">
	<p>Responsive web designs are giving rise to an entire new for of web designing making your design more robust and device friendly.</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-odd thread-alt depth-1" id="comment-1433">
<div class="c-meta">
	<img alt='' src='http://0.gravatar.com/avatar/faf2d64943cca673a5de3a565966e8bf?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://0.gravatar.com/avatar/faf2d64943cca673a5de3a565966e8bf?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.benfrain.com' rel='external nofollow' class='url'>Ben Frain</a></h4>
	<time class="c-time"><a href="#comment-1433" title="">02.26.12</a></time>
</div>
<div class="c-text">
	<p>Great write-up. As ever, deciding which is best is a &#8216;it depends&#8217; scenario so I imagine I&#8217;ll come back here to reconsider each time I need to implement one. Thanks for taking the time.</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-even depth-1" id="comment-1436">
<div class="c-meta">
	<img alt='' src='http://0.gravatar.com/avatar/ff8d5a717bd759b8c9fc60294d9760c8?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://0.gravatar.com/avatar/ff8d5a717bd759b8c9fc60294d9760c8?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://lineandpixel.com' rel='external nofollow' class='url'>Pezillionaire</a></h4>
	<time class="c-time"><a href="#comment-1436" title="">02.26.12</a></time>
</div>
<div class="c-text">
	<p>Really well put together list of nav patterns Brad, love the comprehensive pros and cons for each technique. Bookmarked! I&#8217;ll be referring back to this post often. Well done!</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-odd thread-alt depth-1" id="comment-1437">
<div class="c-meta">
	<img alt='' src='http://0.gravatar.com/avatar/f6701bf8c2fef1c3095ebe07601bb4f8?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://0.gravatar.com/avatar/f6701bf8c2fef1c3095ebe07601bb4f8?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard">Alex White</h4>
	<time class="c-time"><a href="#comment-1437" title="">02.26.12</a></time>
</div>
<div class="c-text">
	<p>Thanks for the ideas. I&#8217;ve been looking into responsive web design for a while and have been debating on the best way to go about it. I&#8217;m not really a fan of any of the footer options. The select box is OK but I prefer either the facebook approach or the toggle approach.</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-even depth-1" id="comment-1440">
<div class="c-meta">
	<img alt='' src='http://2.gravatar.com/avatar/251f435844b86f462c9ac088c0975abe?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://2.gravatar.com/avatar/251f435844b86f462c9ac088c0975abe?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.whatsthebigidea.com' rel='external nofollow' class='url'>David Radovanovic</a></h4>
	<time class="c-time"><a href="#comment-1440" title="">02.26.12</a></time>
</div>
<div class="c-text">
	<p>You practice what you preach. This post looks awesome in my droidx. Thanks for sharing your responsive knowledge.</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-odd thread-alt depth-1" id="comment-1441">
<div class="c-meta">
	<img alt='' src='http://2.gravatar.com/avatar/8cecaf91666691472cd0ca83a9d3f9cb?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://2.gravatar.com/avatar/8cecaf91666691472cd0ca83a9d3f9cb?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://junosorio.com' rel='external nofollow' class='url'>Jun Osorio</a></h4>
	<time class="c-time"><a href="#comment-1441" title="">02.26.12</a></time>
</div>
<div class="c-text">
	<p>Great post! excellent to my next project!</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-even depth-1" id="comment-1442">
<div class="c-meta">
	<img alt='' src='http://2.gravatar.com/avatar/8cecaf91666691472cd0ca83a9d3f9cb?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://2.gravatar.com/avatar/8cecaf91666691472cd0ca83a9d3f9cb?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://junosorio.com' rel='external nofollow' class='url'>Jun Osorio</a></h4>
	<time class="c-time"><a href="#comment-1442" title="">02.26.12</a></time>
</div>
<div class="c-text">
	<p>Great post! excellent for my next project!</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-odd thread-alt depth-1" id="comment-1445">
<div class="c-meta">
	<img alt='' src='http://1.gravatar.com/avatar/776c01ce8e24004d1d8db7c1080d0eb9?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://1.gravatar.com/avatar/776c01ce8e24004d1d8db7c1080d0eb9?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.howtomake.com.ua' rel='external nofollow' class='url'>howtomake</a></h4>
	<time class="c-time"><a href="#comment-1445" title="">02.27.12</a></time>
</div>
<div class="c-text">
	<p>hello! very good work,excellent,<br />
bigUp</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-even depth-1" id="comment-1447">
<div class="c-meta">
	<img alt='' src='http://1.gravatar.com/avatar/1e54ebb3aa319af8b4228fde1d2479e4?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://1.gravatar.com/avatar/1e54ebb3aa319af8b4228fde1d2479e4?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard">Pascal</h4>
	<time class="c-time"><a href="#comment-1447" title="">02.27.12</a></time>
</div>
<div class="c-text">
	<p>With the &#8220;Obama&#8221; solution, il could also be used in a similar way to provide a wild screen solution.</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-odd thread-alt depth-1" id="comment-1449">
<div class="c-meta">
	<img alt='' src='http://1.gravatar.com/avatar/7978b203eec255dbcf01affe0372db66?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://1.gravatar.com/avatar/7978b203eec255dbcf01affe0372db66?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.advisa.fr' rel='external nofollow' class='url'>nemrod</a></h4>
	<time class="c-time"><a href="#comment-1449" title="">02.27.12</a></time>
</div>
<div class="c-text">
	<p>Very useful article and brilliament writing <img src="http://bradfrost.com/wp-includes/images/smilies/simple-smile.png" alt=":)" class="wp-smiley" style="height: 1em; max-height: 1em;" /><br />
Thanks</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-even depth-1" id="comment-1450">
<div class="c-meta">
	<img alt='' src='http://2.gravatar.com/avatar/29958f86da5d76e052520ccfc24dbde9?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://2.gravatar.com/avatar/29958f86da5d76e052520ccfc24dbde9?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://heikomamerow.de' rel='external nofollow' class='url'>Heiko Mamerow</a></h4>
	<time class="c-time"><a href="#comment-1450" title="">02.27.12</a></time>
</div>
<div class="c-text">
	<p>Tnx a lot!!! This was the right article to the right time for me <img src="http://bradfrost.com/wp-includes/images/smilies/simple-smile.png" alt=":-)" class="wp-smiley" style="height: 1em; max-height: 1em;" /> </p>
<p>I tryed out all the above navs in my last projects, but the &#8220;one-and-only&#8221; is not borne yet. I think, it is a question of time &#8211; a lot op people use her smartphones now for interneting. They will lern fast&#8230;. the &#8220;confusing&#8221;-point in some navs is m.e. not the problem. For me it is more a question about &#8211; what will the customer say&#8230; <img src="http://bradfrost.com/wp-includes/images/smilies/simple-smile.png" alt=":-)" class="wp-smiley" style="height: 1em; max-height: 1em;" /></p>
<p>Btw: For my own work &#8211; i create my first responsive wordpress-theme: i prefer the &#8220;The Select Menu&#8221;.</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-odd thread-alt depth-1" id="comment-1452">
<div class="c-meta">
	<img alt='' src='http://2.gravatar.com/avatar/54f7c5885a2794fd8453a23b6e391dce?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://2.gravatar.com/avatar/54f7c5885a2794fd8453a23b6e391dce?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.nmcmahon.co.uk' rel='external nofollow' class='url'>Niall McMahon</a></h4>
	<time class="c-time"><a href="#comment-1452" title="">02.27.12</a></time>
</div>
<div class="c-text">
	<p>This is a great post. I recently had the dilemma of how I would display the navigation of a mobile version of a website. Initially I had it below the header but I had the height issue discussed in your post &#8211; users could not see any of the content below the navigations buttons. I opted instead to have it at the botom of the page, but I like the idea of the toggle that the Starbucks website uses.</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-even depth-1" id="comment-1457">
<div class="c-meta">
	<img alt='' src='http://0.gravatar.com/avatar/cb7f34ac282a68db3a29fe720431ab66?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://0.gravatar.com/avatar/cb7f34ac282a68db3a29fe720431ab66?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.rudibaum.com' rel='external nofollow' class='url'>Rudi</a></h4>
	<time class="c-time"><a href="#comment-1457" title="">02.27.12</a></time>
</div>
<div class="c-text">
	<p>I&#8217;d go for either the Top Nav &#8220;Do Nothing&#8221; approach, or the menu toggle.</p>
<p>Perhaps a poll would be really useful on this blog post to find out what developers like using <img src="http://bradfrost.com/wp-includes/images/smilies/simple-smile.png" alt=":)" class="wp-smiley" style="height: 1em; max-height: 1em;" /></p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-odd thread-alt depth-1" id="comment-1463">
<div class="c-meta">
	<img alt='' src='http://2.gravatar.com/avatar/ec4839ac8d5887bf44ad2dfa279ce8cd?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://2.gravatar.com/avatar/ec4839ac8d5887bf44ad2dfa279ce8cd?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard">Ed Charbeneau</h4>
	<time class="c-time"><a href="#comment-1463" title="">02.27.12</a></time>
</div>
<div class="c-text">
	<p>Brad, about a month or two back I tweeted you asking if you had a link to this exact type of article. Whether you saw the tweet or not, thank you for the post. This is an extremely insightful view of how to tackle mobile nav in a responsive site.</p>
<p>&#8220;The Toggle&#8221; is my personal preference, and what will be used in most of my projects where larger menu systems are needed.</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-even depth-1" id="comment-1464">
<div class="c-meta">
	<img alt='' src='http://1.gravatar.com/avatar/4c9b780bb5ee0e0d862977f5b0eb8e0a?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://1.gravatar.com/avatar/4c9b780bb5ee0e0d862977f5b0eb8e0a?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard">joao polo</h4>
	<time class="c-time"><a href="#comment-1464" title="">02.27.12</a></time>
</div>
<div class="c-text">
	<p>To me, the new twitter bootstrap (bootstrap 2) presents a cool responsible layout, using a select menu on short displays, but a superb layout then item &#8220;the select menu&#8221; in this article.</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-odd thread-alt depth-1" id="comment-1465">
<div class="c-meta">
	<img alt='' src='http://1.gravatar.com/avatar/a10f0b02d7cc7b4c9248fa3d3920c761?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://1.gravatar.com/avatar/a10f0b02d7cc7b4c9248fa3d3920c761?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.cloudesign.ro' rel='external nofollow' class='url'>Tavi</a></h4>
	<time class="c-time"><a href="#comment-1465" title="">02.27.12</a></time>
</div>
<div class="c-text">
	<p>Awsome guide!</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-even depth-1" id="comment-1468">
<div class="c-meta">
	<img alt='' src='http://1.gravatar.com/avatar/4f95a0ca2e94399ac1763a5c2277d127?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://1.gravatar.com/avatar/4f95a0ca2e94399ac1763a5c2277d127?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://lexi.se' rel='external nofollow' class='url'>Alexis Fellenius Makrigianni</a></h4>
	<time class="c-time"><a href="#comment-1468" title="">02.27.12</a></time>
</div>
<div class="c-text">
	<p>Great write-up!</p>
<p>I agree that The Toggle is the most elegant, but I think it&#8217;s problematic with subnav items. The Select Menu feels awkward too me. I prefer The Footer Anchor, at least when there is subnav items too.</p>
<p>I wrote down some thoughts on these in <a href="http://lexi.se/post/18401593732/thoughts-on-responsive-navigation" rel="nofollow">http://lexi.se/post/18401593732/thoughts-on-responsive-navigation</a></p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-odd thread-alt depth-1" id="comment-1472">
<div class="c-meta">
	<img alt='' src='http://1.gravatar.com/avatar/1f6eda366cc8e78f91c743ca922bcc50?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://1.gravatar.com/avatar/1f6eda366cc8e78f91c743ca922bcc50?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://phases.dk/en' rel='external nofollow' class='url'>Anz</a></h4>
	<time class="c-time"><a href="#comment-1472" title="">02.28.12</a></time>
</div>
<div class="c-text">
	<p>How is this one.. Horizontal navigation and anything slider<br />
<a href="http://www.lifetreecafe.com/" rel="nofollow">http://www.lifetreecafe.com/</a></p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-even depth-1" id="comment-1474">
<div class="c-meta">
	<img alt='' src='http://2.gravatar.com/avatar/5f0d67f4a91e033963193673c1a84f55?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://2.gravatar.com/avatar/5f0d67f4a91e033963193673c1a84f55?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.ericdux.com' rel='external nofollow' class='url'>Eric J. Davis</a></h4>
	<time class="c-time"><a href="#comment-1474" title="">02.28.12</a></time>
</div>
<div class="c-text">
	<p>My question is: What do you call the Select Menu from within the site itself? Some examples use &#8220;Navigation.&#8221; Is that clear? Others use &#8220;Select a Page.&#8221; Is &#8220;page&#8221; accurate when, in fact, you may have major sections represented by the items in the menu and not simply pages? We&#8217;ve toyed with both &#8220;Menu&#8221; and &#8220;Sections&#8221; (the latter being the Boston Globe&#8217;s approach), but I&#8217;m not sure yet if either really resonates with users. And then, to make things more interesting, what do you call the level of navigation once you&#8217;re below the top level? Any advice is much appreciated.<br />
^EJD<br />
@ericdux</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-odd thread-alt depth-1" id="comment-1475">
<div class="c-meta">
	<img alt='' src='http://0.gravatar.com/avatar/6095f1c31d4b7d37b3b977b390a9d215?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://0.gravatar.com/avatar/6095f1c31d4b7d37b3b977b390a9d215?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://confab2012.com' rel='external nofollow' class='url'>Sean Tubridy</a></h4>
	<time class="c-time"><a href="#comment-1475" title="">02.28.12</a></time>
</div>
<div class="c-text">
	<p>Hi Brad, thanks for putting this list together and sharing your thoughts &#8211; it&#8217;s super helpful. </p>
<p>I designed and developed the Confab 2012 site you mentioned above. It&#8217;s the first responsive site I&#8217;ve built.  You&#8217;re absolutely right &#8211; it does need some help in the navigation department. While it wasn&#8217;t a total do nothing approach (I changed the nav items to be larger, more spaced-apart and to look more button-like at small screen sizes), but that still doesn&#8217;t take care of the height issue you mentioned. That&#8217;s something that has always bothered me a bit and even though there is a highlight state to indicate the page a user is on, it doesn&#8217;t show enough of the page.</p>
<p>I&#8217;ve since made the header/logo much smaller and that helps a bit, but I&#8217;m still pondering what method to go with. I&#8217;m leaning for the toggle approach but I want to make sure users know how to open the navigation easily. I think &#8220;menu&#8221; or &#8220;navigation&#8221; would work as a toggle word. Some sites simply show an arrow or 3 lines (like Starbucks) which I don&#8217;t think is very obvious.</p>
<p>Anyway, It&#8217;s getting there!</p>
	</div>
</li>
<ul class="children">
<li class="comment byuser comment-author-brad bypostauthor even depth-2" id="comment-1480">
<div class="c-meta">
	<img alt='' src='http://2.gravatar.com/avatar/edbd4d6b70d3107ea874355c6114c80f?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://2.gravatar.com/avatar/edbd4d6b70d3107ea874355c6114c80f?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://bradfrost.com' rel='external nofollow' class='url'>brad</a></h4>
	<time class="c-time"><a href="#comment-1480" title="">02.28.12</a></time>
</div>
<div class="c-text">
	<p>Sean! You designed a hell of a website. I definitely don&#8217;t want you to think I was throwing your site under the bus. It&#8217;s a great site and the height issue is something that most of these responsive designs (including my own) deal with. These are all early days still and we&#8217;re all learning together, so keep up the excellent work!</p>
	</div>
</li>
</li><!-- #comment-## -->
</ul><!-- .children -->
</li><!-- #comment-## -->
<li class="comment odd alt thread-even depth-1" id="comment-1484">
<div class="c-meta">
	<img alt='' src='http://2.gravatar.com/avatar/e4c1ca4600322a8eab58c74c3431f8ba?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://2.gravatar.com/avatar/e4c1ca4600322a8eab58c74c3431f8ba?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://webstandard.kulando.de/static/modernes-webdesign-mit-css' rel='external nofollow' class='url'>Webdesign Blog</a></h4>
	<time class="c-time"><a href="#comment-1484" title="">02.29.12</a></time>
</div>
<div class="c-text">
	<p>Very nice collection! The main problem for responsive navigations is the size and the whitespace between the navigation elements on mobile versions. Most developers know how to (re)place a navigation, but a lot of them don&#8217;t resize the elements and that&#8217;s the reason why the users have to touch a (too) small link&#8230;</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-odd thread-alt depth-1" id="comment-1491">
<div class="c-meta">
	<img alt='' src='http://0.gravatar.com/avatar/6768ccc9e617752c80ae641baac07575?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://0.gravatar.com/avatar/6768ccc9e617752c80ae641baac07575?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard">lukasz fiszer</h4>
	<time class="c-time"><a href="#comment-1491" title="">02.29.12</a></time>
</div>
<div class="c-text">
	<p>Recently I wanted to use a select menu navigation in one of my designs, but all existing plugins were based on jQuery. Using a whole heavy library just for one small piece of navigation, that&#8217;s not the best mobile friendly approach&#8230; </p>
<p>So I decided to write my own plugin that would do the job. It is called selectnav.js and it&#8217;s lightweight (only 1.5kb), customizable and, of course, library independent. You can grab it from <a href="http://lukaszfiszer.github.com/selectnav.js/" rel="nofollow">http://lukaszfiszer.github.com/selectnav.js/</a> I hope it will be useful for some of you.</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-even depth-1" id="comment-1493">
<div class="c-meta">
	<img alt='' src='http://0.gravatar.com/avatar/043cd1fb43adf000886bfa9722e2a895?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://0.gravatar.com/avatar/043cd1fb43adf000886bfa9722e2a895?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard">ScreenOrigami</h4>
	<time class="c-time"><a href="#comment-1493" title="">02.29.12</a></time>
</div>
<div class="c-text">
	<p>As with everything in web design, the navigation pattern you choose depends on your project and target group. This is a great overview and resource. Thanks! <img src="http://bradfrost.com/wp-includes/images/smilies/simple-smile.png" alt=":-)" class="wp-smiley" style="height: 1em; max-height: 1em;" /></p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-odd thread-alt depth-1" id="comment-1520">
<div class="c-meta">
	<img alt='' src='http://1.gravatar.com/avatar/78d32f6463eb9038b9eb7a17ade95971?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://1.gravatar.com/avatar/78d32f6463eb9038b9eb7a17ade95971?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.doofydesigns.com/' rel='external nofollow' class='url'>Chris</a></h4>
	<time class="c-time"><a href="#comment-1520" title="">03.02.12</a></time>
</div>
<div class="c-text">
	<p>Food for thought for sure. I usually stick with the traditional NAV on top, but you called it that if a client wants to expand the categories, this can great quite the head ache.</p>
<p>Good call.</p>
<p>Cheers,<br />
Chris</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-even depth-1" id="comment-1522">
<div class="c-meta">
	<img alt='' src='http://1.gravatar.com/avatar/7ba78a5521ad464bb5ace380257ba58b?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://1.gravatar.com/avatar/7ba78a5521ad464bb5ace380257ba58b?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard">Teresa K</h4>
	<time class="c-time"><a href="#comment-1522" title="">03.02.12</a></time>
</div>
<div class="c-text">
	<p>Just what I needed today! Thank you, thank you, thank you.</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-odd thread-alt depth-1" id="comment-1537">
<div class="c-meta">
	<img alt='' src='http://2.gravatar.com/avatar/bf56b24d1ca5bf7cb7ab5389f22fee72?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://2.gravatar.com/avatar/bf56b24d1ca5bf7cb7ab5389f22fee72?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.heatbrain.com' rel='external nofollow' class='url'>Jonathan Roehm</a></h4>
	<time class="c-time"><a href="#comment-1537" title="">03.03.12</a></time>
</div>
<div class="c-text">
	<p>Illuminating, potent, and honestly &#8211; quite brilliant. One of the better posts on the topic I&#8217;ve read in months. Thanks for the enlightening mindset.</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-even depth-1" id="comment-1544">
<div class="c-meta">
	<img alt='' src='http://0.gravatar.com/avatar/3cca2a0e83c300b21149b77b2ec4c115?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://0.gravatar.com/avatar/3cca2a0e83c300b21149b77b2ec4c115?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.tjtaylor.net/english/' rel='external nofollow' class='url'>TJ Taylor</a></h4>
	<time class="c-time"><a href="#comment-1544" title="">03.04.12</a></time>
</div>
<div class="c-text">
	<p>A great write-up and I&#8217;m considering the toggle for our next site. We recently went with the Footer Anchor on our corporate site (the same one linked here to my name) and it works very well &#8211; intuitive and great device support, as well as fitting in well with our SOC.<br />
As for what to called the anchor &#8211; we just used &#8216;skip to menu&#8217;. Navigation as a word or concept doesn&#8217;t seem to be as recognisable generally.<br />
I thought it also worth mentioning that too often we don&#8217;t take advantage of the fact that mobiles can also be used as a telephone (gasp!) and it&#8217;s a good idea to include a prominent &#8216;call us&#8217; link (we&#8217;re B2B).</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-odd thread-alt depth-1" id="comment-1555">
<div class="c-meta">
	<img alt='' src='http://0.gravatar.com/avatar/97996769a841bf1821fbaa382e514c20?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://0.gravatar.com/avatar/97996769a841bf1821fbaa382e514c20?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://wherespresso.com' rel='external nofollow' class='url'>Tim</a></h4>
	<time class="c-time"><a href="#comment-1555" title="">03.06.12</a></time>
</div>
<div class="c-text">
	<p>Great write up, Brad.</p>
<p>I&#8217;d be interested in your rankings of best (or least worst) to worst solutions, perhaps with regard to presenting content and covering most mobiles.</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-even depth-1" id="comment-1558">
<div class="c-meta">
	<img alt='' src='http://0.gravatar.com/avatar/9d25b744723cb7a736f56a911241ad9c?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://0.gravatar.com/avatar/9d25b744723cb7a736f56a911241ad9c?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.alltimelowe.com' rel='external nofollow' class='url'>Chris</a></h4>
	<time class="c-time"><a href="#comment-1558" title="">03.06.12</a></time>
</div>
<div class="c-text">
	<p>Great article.</p>
<p>I just saw this from Smashing Mag; an interesting idea to &#8220;pull down for navigation.&#8221; <a href="http://inspectelement.com/tutorials/pull-down-for-navigation-a-responsive-solution/" rel="nofollow">http://inspectelement.com/tutorials/pull-down-for-navigation-a-responsive-solution/</a></p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-odd thread-alt depth-1" id="comment-1567">
<div class="c-meta">
	<img alt='' src='http://1.gravatar.com/avatar/ae049867321650db92f74bfb926a8551?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://1.gravatar.com/avatar/ae049867321650db92f74bfb926a8551?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.javerydesign.com' rel='external nofollow' class='url'>Justin</a></h4>
	<time class="c-time"><a href="#comment-1567" title="">03.06.12</a></time>
</div>
<div class="c-text">
	<p>we&#8217;re going through the process of converting a large content heavy site with 4 levels of navigation across to responsive.  </p>
<p>I&#8217;ll check back with the details.</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-even depth-1" id="comment-1654">
<div class="c-meta">
	<img alt='' src='http://1.gravatar.com/avatar/da4d892443a7f3467181318d1b1004e2?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://1.gravatar.com/avatar/da4d892443a7f3467181318d1b1004e2?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://jaroslavtesarik.cz' rel='external nofollow' class='url'>Jaroslav Tesarik</a></h4>
	<time class="c-time"><a href="#comment-1654" title="">03.14.12</a></time>
</div>
<div class="c-text">
	<p>Great article! I&#8217;ve been looking for post like this..</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-odd thread-alt depth-1" id="comment-1703">
<div class="c-meta">
	<img alt='' src='http://0.gravatar.com/avatar/f0be4242e33d5f3a7f1f9515c1c47fdd?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://0.gravatar.com/avatar/f0be4242e33d5f3a7f1f9515c1c47fdd?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard">UX CD</h4>
	<time class="c-time"><a href="#comment-1703" title="">03.18.12</a></time>
</div>
<div class="c-text">
	<p>This is, as I see it, the biggest impediment to responsive design. I&#8217;ve seen literally dozens of sites and they work well as long as the navigation is very shallow (one or two levels deep), and the nomenclature is very concise. It becomes problematic when you have deep navigation (three, four or more levels), and large words. I feel this is something that the responsive evangelists step around. Many sites / blogs / gurus simply recommend that you collapse the nav levels. Problem solved! It&#8217;s not so easy. Sure, for your portfolio or design firm site, it&#8217;s fine, but most sites have navigation requirements well beyond &#8220;About Us&#8221;, &#8220;What We Do&#8221;, &#8220;Contact Us&#8221;, and copy written like haiku. You&#8217;ve done a great job of breaking down the various styles to date, but these are still limited, and not optimal for all experiences. This is a real challenge.</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-even depth-1" id="comment-1785">
<div class="c-meta">
	<img alt='' src='http://2.gravatar.com/avatar/e3904488e21bded1d1942e95265b33ef?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://2.gravatar.com/avatar/e3904488e21bded1d1942e95265b33ef?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://scwccJJqhdRHTRXZnzQk.org' rel='external nofollow' class='url'>Benton Barranco</a></h4>
	<time class="c-time"><a href="#comment-1785" title="">03.22.12</a></time>
</div>
<div class="c-text">
	<p>Greetings from Florida! I&#8217;m bored at work so I decided to check out your website on my iphone during lunch break. I really like the information you provide here and can&#8217;t wait to take a look when I get home. I&#8217;m surprised at how fast your blog loaded on my phone .. I&#8217;m not even using WIFI, just 3G .. Anyways, great blog!</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-odd thread-alt depth-1" id="comment-1805">
<div class="c-meta">
	<img alt='' src='http://0.gravatar.com/avatar/9649b0e916e239651f467dbf2a36f633?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://0.gravatar.com/avatar/9649b0e916e239651f467dbf2a36f633?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.listamartie2.com' rel='external nofollow' class='url'>Andrew Pelt</a></h4>
	<time class="c-time"><a href="#comment-1805" title="">03.23.12</a></time>
</div>
<div class="c-text">
	<p>I simply want to say I am new to blogging and site-building and seriously liked you&#8217;re blog. Almost certainly I’m likely to bookmark your blog post . You actually come with superb articles. Cheers for sharing with us your web-site.</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-even depth-1" id="comment-1814">
<div class="c-meta">
	<img alt='' src='http://0.gravatar.com/avatar/cf3473f937dbe8ac321b02d7efa52934?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://0.gravatar.com/avatar/cf3473f937dbe8ac321b02d7efa52934?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard">Jordicc</h4>
	<time class="c-time"><a href="#comment-1814" title="">03.23.12</a></time>
</div>
<div class="c-text">
	<p>I&#8217;m doing a WRD and using another type of approach. I put the menus (a 3 icons one and  a classic hierarchical menu) before the footer. On the computer and tablet screen I positioned they up throuth CSS. And on the phone, let they be at hte bottom. Does it seems right? <a href="http://www.kromatika.com/municipis/" rel="nofollow">http://www.kromatika.com/municipis/</a></p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-odd thread-alt depth-1" id="comment-1956">
<div class="c-meta">
	<img alt='' src='http://0.gravatar.com/avatar/c45793df098df10d39c1996e7d4984f5?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://0.gravatar.com/avatar/c45793df098df10d39c1996e7d4984f5?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard">Tessa</h4>
	<time class="c-time"><a href="#comment-1956" title="">03.29.12</a></time>
</div>
<div class="c-text">
	<p>One thing to keep in mind when using the select menu method: mobile browsers render these dramatically differently. For example, my android renders select menus at 40px high, which is about double what you&#8217;d find in a desktop browser.</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-even depth-1" id="comment-2043">
<div class="c-meta">
	<img alt='' src='http://0.gravatar.com/avatar/9cf0c49b80dbcda87f07ac798fa50b7f?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://0.gravatar.com/avatar/9cf0c49b80dbcda87f07ac798fa50b7f?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard">Jeff Kraemer</h4>
	<time class="c-time"><a href="#comment-2043" title="">04.05.12</a></time>
</div>
<div class="c-text">
	<p>I second UX CD&#8217;s comment&#8211;these patterns work well for navs that are one of two levels deep.</p>
<p>Brad (or anyone), have you seen any responsive navigation patterns that work well for three- or four-level navigation? I&#8217;m working on such a project, and it&#8217;s not possible to simply collapse the nav to two levels. I&#8217;m finding that it&#8217;s hard to avoid cramming the top of the screen with navigation at lower breakpoints.</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-odd thread-alt depth-1" id="comment-2281">
<div class="c-meta">
	<img alt='' src='http://2.gravatar.com/avatar/e66d7783cb24b7268b5b05428d038213?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://2.gravatar.com/avatar/e66d7783cb24b7268b5b05428d038213?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.paul-rand.com' rel='external nofollow' class='url'>daniel</a></h4>
	<time class="c-time"><a href="#comment-2281" title="">04.26.12</a></time>
</div>
<div class="c-text">
	<p>wonderful info. thank you!</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-even depth-1" id="comment-2284">
<div class="c-meta">
	<img alt='' src='http://1.gravatar.com/avatar/48fc79bc30caaf5b4be32e778ab99ce2?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://1.gravatar.com/avatar/48fc79bc30caaf5b4be32e778ab99ce2?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://peter.muehlbacher.me' rel='external nofollow' class='url'>peter</a></h4>
	<time class="c-time"><a href="#comment-2284" title="">04.26.12</a></time>
</div>
<div class="c-text">
	<p>on my site (peter.muehlbacher.me) I went for a &#8220;toggle&#8221;like approach &#8211; although I made it sticking it to the top (position fixed → no JS used here and degrades nicely) and expanding it in a (hopefully) pretty way.<br />
Furthermore the animation starts on :hover (which is tap on mobile devices) and the menu shrinks if you tap elsewhere. all in all it&#8217;s pretty unobtrusive and works on all mobile devices I tested it on (old android devices, galaxy nexus and iPhone)<br />
feel free to check it out 😉 (btw: in theory it degrades nicely, never encountered a device it doesn&#8217;t work on though ^^)</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-odd thread-alt depth-1" id="comment-2690">
<div class="c-meta">
	<img alt='' src='http://2.gravatar.com/avatar/e944b2d80d6c688905e16220057c4db5?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://2.gravatar.com/avatar/e944b2d80d6c688905e16220057c4db5?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://dirq.net' rel='external nofollow' class='url'>dirk</a></h4>
	<time class="c-time"><a href="#comment-2690" title="">06.20.12</a></time>
</div>
<div class="c-text">
	<p>Thanks for laying out all these nav options in one place.  Very well thought out and very helpful for designing sites later.  Thanks!</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-even depth-1" id="comment-2691">
<div class="c-meta">
	<img alt='' src='http://2.gravatar.com/avatar/89fb63e2f29f3cf53fbb36da8ce32905?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://2.gravatar.com/avatar/89fb63e2f29f3cf53fbb36da8ce32905?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.justmarkup.com/log' rel='external nofollow' class='url'>Michael</a></h4>
	<time class="c-time"><a href="#comment-2691" title="">06.20.12</a></time>
</div>
<div class="c-text">
	<p>Hy Brad,</p>
<p>what do you think about this try <a href="http://justmarkup.com/log/2012/06/19/responsive-multi-level-navigation/" rel="nofollow">http://justmarkup.com/log/2012/06/19/responsive-multi-level-navigation/</a></p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-odd thread-alt depth-1" id="comment-2766">
<div class="c-meta">
	<img alt='' src='http://1.gravatar.com/avatar/19b138559e0c00481b350d7661145e08?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://1.gravatar.com/avatar/19b138559e0c00481b350d7661145e08?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.korelix.com/' rel='external nofollow' class='url'>web designer philippines</a></h4>
	<time class="c-time"><a href="#comment-2766" title="">06.29.12</a></time>
</div>
<div class="c-text">
	<p>Nice. Thanks for sharing this piece of information about navigation patterns.</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-even depth-1" id="comment-2772">
<div class="c-meta">
	<img alt='' src='http://2.gravatar.com/avatar/b84a3bccd8567658f215a49b01c91d92?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://2.gravatar.com/avatar/b84a3bccd8567658f215a49b01c91d92?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://cognizant-designs.com' rel='external nofollow' class='url'>Zachattack</a></h4>
	<time class="c-time"><a href="#comment-2772" title="">06.29.12</a></time>
</div>
<div class="c-text">
	<p>Thank you for this great post of various methods to implement responsive nav. I like that you have put in examples for each of your cases and that the pro and cons are also highly informative.</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-odd thread-alt depth-1" id="comment-2908">
<div class="c-meta">
	<img alt='' src='http://0.gravatar.com/avatar/f84e6834f986c89d2d357c8d3b2614e2?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://0.gravatar.com/avatar/f84e6834f986c89d2d357c8d3b2614e2?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard">Smilyan</h4>
	<time class="c-time"><a href="#comment-2908" title="">07.11.12</a></time>
</div>
<div class="c-text">
	<p>Please update the &#8220;Selectbox&#8221; as a means for navigation. More specifically, the part that says it is javascript dependant. Here is a way that it could be done with backward compatibility when javascript is turned off <img src="http://bradfrost.com/wp-includes/images/smilies/simple-smile.png" alt=":)" class="wp-smiley" style="height: 1em; max-height: 1em;" /></p>
<p><a href="http://css-tricks.com/unobtrusive-page-changer/" rel="nofollow">http://css-tricks.com/unobtrusive-page-changer/</a></p>
<p>Thank you for the article.</p>
	</div>
</li>
<ul class="children">
<li class="comment byuser comment-author-brad bypostauthor odd alt depth-2" id="comment-2909">
<div class="c-meta">
	<img alt='' src='http://2.gravatar.com/avatar/edbd4d6b70d3107ea874355c6114c80f?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://2.gravatar.com/avatar/edbd4d6b70d3107ea874355c6114c80f?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://bradfrost.com' rel='external nofollow' class='url'>brad</a></h4>
	<time class="c-time"><a href="#comment-2909" title="">07.11.12</a></time>
</div>
<div class="c-text">
	<p>The pattern still relies on Javascript to transform the navigation list into a select menu.</p>
	</div>
</li>
</li><!-- #comment-## -->
</ul><!-- .children -->
</li><!-- #comment-## -->
<li class="comment even thread-even depth-1" id="comment-2910">
<div class="c-meta">
	<img alt='' src='http://0.gravatar.com/avatar/f372f3c8b2b99804358cad4c0fa2a91a?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://0.gravatar.com/avatar/f372f3c8b2b99804358cad4c0fa2a91a?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.squareonemd.co.uk' rel='external nofollow' class='url'>Elliott Richmond</a></h4>
	<time class="c-time"><a href="#comment-2910" title="">07.11.12</a></time>
</div>
<div class="c-text">
	<p>Great post really helpful for a current responsive project, many thanks</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-odd thread-alt depth-1" id="comment-2914">
<div class="c-meta">
	<img alt='' src='http://2.gravatar.com/avatar/89ca9b6f70abcc75c8c142652324f2d1?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://2.gravatar.com/avatar/89ca9b6f70abcc75c8c142652324f2d1?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://templatz.co' rel='external nofollow' class='url'>Kev</a></h4>
	<time class="c-time"><a href="#comment-2914" title="">07.11.12</a></time>
</div>
<div class="c-text">
	<p>I think responsive navigation is the best way to go so no matter what device your visitor is on the navigation will look good. So one visitor could be on an iPod, one on a widescreen desktop computer, one on a laptop and one even looking at a big projector screen and they will all have a nice experience. Here are some great nav bars with and without a drop-down menu, and semi-transparent nav bars that will match any webpage background colour or design.</p>
<p>RESPONSIVE NAVIGATION<br />
<a href="http://templatz.co/navigation.php" rel="nofollow">http://templatz.co/navigation.php</a></p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-even depth-1" id="comment-2925">
<div class="c-meta">
	<img alt='' src='http://2.gravatar.com/avatar/ee94e5cd6c1cd8692c56ece474748e2b?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://2.gravatar.com/avatar/ee94e5cd6c1cd8692c56ece474748e2b?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://royage.net' rel='external nofollow' class='url'>Adeel Royage</a></h4>
	<time class="c-time"><a href="#comment-2925" title="">07.12.12</a></time>
</div>
<div class="c-text">
	<p>This was all awesome&#8230; Just new to responsive websites, but it really helped a lot. Thanks</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-odd thread-alt depth-1" id="comment-2976">
<div class="c-meta">
	<img alt='' src='http://2.gravatar.com/avatar/2563271b331d29eaeb2eafc7146b4391?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://2.gravatar.com/avatar/2563271b331d29eaeb2eafc7146b4391?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard">Jhon</h4>
	<time class="c-time"><a href="#comment-2976" title="">07.15.12</a></time>
</div>
<div class="c-text">
	<p>Nice article, very usefull. Thanks!</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-even depth-1" id="comment-2986">
<div class="c-meta">
	<img alt='' src='http://1.gravatar.com/avatar/447840c065babcba48e558a1aa2db941?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://1.gravatar.com/avatar/447840c065babcba48e558a1aa2db941?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.dpindrys.com' rel='external nofollow' class='url'>David Pindrys</a></h4>
	<time class="c-time"><a href="#comment-2986" title="">07.16.12</a></time>
</div>
<div class="c-text">
	<p>Wow, what a fantastic article. I&#8217;ve been scouring the web to see if I could find any opinion or tips on designing a navigation scheme for a mobile website that&#8217;s all on one page. I&#8217;ve got the site working pretty smoothly for desktops, with the links elegantly sliding you down the page to the appropriate section, and I can imagine it working for mobile devices ala a toggle that is &#8220;stuck&#8221; to the top of the screen. Has anyone seen this in use or have any advice on scripts I could check out that may help?</p>
<p>I&#8217;m using a responsive framework (ala Foundation) that totally rocks. So, showing/hiding different elements is not a problem for different devices.</p>
<p>Thanks so much!<br />
David</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-odd thread-alt depth-1" id="comment-3004">
<div class="c-meta">
	<img alt='' src='http://0.gravatar.com/avatar/6f224eb99489d34aecc556bbd6bb6b79?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://0.gravatar.com/avatar/6f224eb99489d34aecc556bbd6bb6b79?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.webdesignacademy.co.za/' rel='external nofollow' class='url'>Brian</a></h4>
	<time class="c-time"><a href="#comment-3004" title="">07.18.12</a></time>
</div>
<div class="c-text">
	<p>Awesome list. Thanks. Also used the bottom nav only with added top nav swipe. If they miss the top nav swipe, they are sure to get some nav at the bottom <img src="http://bradfrost.com/wp-includes/images/smilies/simple-smile.png" alt=":)" class="wp-smiley" style="height: 1em; max-height: 1em;" /></p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-even depth-1" id="comment-3027">
<div class="c-meta">
	<img alt='' src='http://1.gravatar.com/avatar/14f92ccf2c1f0fdce6e6afcb86f386b6?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://1.gravatar.com/avatar/14f92ccf2c1f0fdce6e6afcb86f386b6?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard">Gultekin</h4>
	<time class="c-time"><a href="#comment-3027" title="">07.20.12</a></time>
</div>
<div class="c-text">
	<p>That shows responsive design is a lot of hassle to fit the desktop design into smaller space. I think many people assume user experience is just about fitting the user experience of desktop to mobile. Then we look for workarounds. I&#8217;d rather do a mobile specific site. I am not omitting responsive design or seeing it unnecessary altogether but unless you have one menu with three options and no sub menu (slight exaggeration), and the smallest device is a tab, content need to be re-arranged and mobile users should have quicker access to content as they are generally moving.</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-odd thread-alt depth-1" id="comment-3222">
<div class="c-meta">
	<img alt='' src='http://1.gravatar.com/avatar/ddd8d891066d9e31a3ee7b1ea4d8d4ab?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://1.gravatar.com/avatar/ddd8d891066d9e31a3ee7b1ea4d8d4ab?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.clintonbeattie.com' rel='external nofollow' class='url'>Clinton</a></h4>
	<time class="c-time"><a href="#comment-3222" title="">08.14.12</a></time>
</div>
<div class="c-text">
	<p>Great article. Looking forward to people coming up with new ideas for responsive and small screen navigation. I have uploaded a little JS app which will calculate the percentage widths of each navigation item for a responsive full width navigation. It was created out of necessity due to a lack of full width navigation websites out there at the moment &#8211; <a href="https://github.com/clintonbeattie/flexinavcalc" rel="nofollow">https://github.com/clintonbeattie/flexinavcalc</a></p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-even depth-1" id="comment-3238">
<div class="c-meta">
	<img alt='' src='http://0.gravatar.com/avatar/0f1ca8bd5ce5b9dba3c1bcee408349b4?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://0.gravatar.com/avatar/0f1ca8bd5ce5b9dba3c1bcee408349b4?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.TheeDesign.com' rel='external nofollow' class='url'>Richard</a></h4>
	<time class="c-time"><a href="#comment-3238" title="">08.18.12</a></time>
</div>
<div class="c-text">
	<p>Thanks for the good advice. We are going to implement &#8220;the toggle&#8221; to our new responsive site.</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-odd thread-alt depth-1" id="comment-3284">
<div class="c-meta">
	<img alt='' src='http://2.gravatar.com/avatar/5a9da2677e8b9dcadcdb6f17a64c4b27?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://2.gravatar.com/avatar/5a9da2677e8b9dcadcdb6f17a64c4b27?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://responsivedeck.com/' rel='external nofollow' class='url'>rDeck</a></h4>
	<time class="c-time"><a href="#comment-3284" title="">08.28.12</a></time>
</div>
<div class="c-text">
	<p>Great article, really usefull. Thanks!</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-even depth-1" id="comment-3300">
<div class="c-meta">
	<img alt='' src='http://1.gravatar.com/avatar/73a27ad452172171f73400cd7a1deffd?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://1.gravatar.com/avatar/73a27ad452172171f73400cd7a1deffd?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard">Marv</h4>
	<time class="c-time"><a href="#comment-3300" title="">08.30.12</a></time>
</div>
<div class="c-text">
	<p>Great post! Very useful, thanks.</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-odd thread-alt depth-1" id="comment-3420">
<div class="c-meta">
	<img alt='' src='http://0.gravatar.com/avatar/62cd8fad0792b4e4514f5db01e9151b6?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://0.gravatar.com/avatar/62cd8fad0792b4e4514f5db01e9151b6?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.gilestalbot.com/' rel='external nofollow' class='url'>Giles Talbot</a></h4>
	<time class="c-time"><a href="#comment-3420" title="">09.10.12</a></time>
</div>
<div class="c-text">
	<p>Thanks for this Brad. I just used the &#8216;Footer anchor&#8217; method on a client site, and pointed them to your research in this post. </p>
<p>Have a beer token.</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-even depth-1" id="comment-3654">
<div class="c-meta">
	<img alt='' src='http://0.gravatar.com/avatar/6609b6249d3827595c9798f8a74a9cdf?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://0.gravatar.com/avatar/6609b6249d3827595c9798f8a74a9cdf?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.cipu.de' rel='external nofollow' class='url'>Frank</a></h4>
	<time class="c-time"><a href="#comment-3654" title="">09.24.12</a></time>
</div>
<div class="c-text">
	<p>Hi Brad</p>
<p>Following a link from azadcreative I happend to run into your site. The way you point out the pros and cons makes reading fun. Thanks a lot!</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-odd thread-alt depth-1" id="comment-3657">
<div class="c-meta">
	<img alt='' src='http://0.gravatar.com/avatar/63da7712e27188405bb9d715b55d1c95?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://0.gravatar.com/avatar/63da7712e27188405bb9d715b55d1c95?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.fabianrios.co' rel='external nofollow' class='url'>Fabián Ríos</a></h4>
	<time class="c-time"><a href="#comment-3657" title="">09.24.12</a></time>
</div>
<div class="c-text">
	<p>nice article</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-even depth-1" id="comment-3975">
<div class="c-meta">
	<img alt='' src='http://0.gravatar.com/avatar/fa6d7dc77b33905857d4ee27fc371283?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://0.gravatar.com/avatar/fa6d7dc77b33905857d4ee27fc371283?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://blog.repertorium-online.de' rel='external nofollow' class='url'>Alf</a></h4>
	<time class="c-time"><a href="#comment-3975" title="">10.24.12</a></time>
</div>
<div class="c-text">
	<p>Excellent article. There are really a lot of ways a solve problem I didn&#8217;t have before this article <img src="http://bradfrost.com/wp-includes/images/smilies/simple-smile.png" alt=":-)" class="wp-smiley" style="height: 1em; max-height: 1em;" /><br />
I like the starbucks-site example</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-odd thread-alt depth-1" id="comment-3979">
<div class="c-meta">
	<img alt='' src='http://0.gravatar.com/avatar/68c0702a7aabd1c2605b82d73d7c35f1?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://0.gravatar.com/avatar/68c0702a7aabd1c2605b82d73d7c35f1?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard">erictherobot</h4>
	<time class="c-time"><a href="#comment-3979" title="">10.24.12</a></time>
</div>
<div class="c-text">
	<p>amazing article! thank you!</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-even depth-1" id="comment-3990">
<div class="c-meta">
	<img alt='' src='http://1.gravatar.com/avatar/76f346b52efd96d54f452ed807cf8d49?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://1.gravatar.com/avatar/76f346b52efd96d54f452ed807cf8d49?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.feelingpeaky.com' rel='external nofollow' class='url'>Chris</a></h4>
	<time class="c-time"><a href="#comment-3990" title="">10.25.12</a></time>
</div>
<div class="c-text">
	<p>Just want to echo above &#8211; great article, good examples &#8211; my preference would be Starbucks &#8211; not that we&#8217;re there yet on our site which at the moment uses the first method&#8230; for now.</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-odd thread-alt depth-1" id="comment-4216">
<div class="c-meta">
	<img alt='' src='http://1.gravatar.com/avatar/73337bc7e9efedd0575c1ec31ce45f88?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://1.gravatar.com/avatar/73337bc7e9efedd0575c1ec31ce45f88?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://ios-blog.co.uk' rel='external nofollow' class='url'>iOS-Blog</a></h4>
	<time class="c-time"><a href="#comment-4216" title="">11.05.12</a></time>
</div>
<div class="c-text">
	<p>Thank you very VERY much for this. We&#8217;re working on a new responsive design and have been looking for the starbucks menu version for a while. <img src="http://bradfrost.com/wp-includes/images/smilies/simple-smile.png" alt=":)" class="wp-smiley" style="height: 1em; max-height: 1em;" /></p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-even depth-1" id="comment-4398">
<div class="c-meta">
	<img alt='' src='http://0.gravatar.com/avatar/9649b0e916e239651f467dbf2a36f633?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://0.gravatar.com/avatar/9649b0e916e239651f467dbf2a36f633?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.pureraspberryketonereviews.com' rel='external nofollow' class='url'>Andrew Pelt</a></h4>
	<time class="c-time"><a href="#comment-4398" title="">11.09.12</a></time>
</div>
<div class="c-text">
	<p>I read your site just so I can read your genuine writing form.</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-odd thread-alt depth-1" id="comment-4486">
<div class="c-meta">
	<img alt='' src='http://2.gravatar.com/avatar/511e40f95e86f75323ea7a16bc2c1493?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://2.gravatar.com/avatar/511e40f95e86f75323ea7a16bc2c1493?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.webmatros.com' rel='external nofollow' class='url'>Oliver Nielsen</a></h4>
	<time class="c-time"><a href="#comment-4486" title="">11.13.12</a></time>
</div>
<div class="c-text">
	<p>Very very well written post Brad! And so useful for someone like me, who&#8217;s never before seen the various responsive nav methods compared, pros and cons. Thanks!</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-even depth-1" id="comment-4488">
<div class="c-meta">
	<img alt='' src='http://0.gravatar.com/avatar/00047c82bfd9406a86a60c5ead6f8eff?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://0.gravatar.com/avatar/00047c82bfd9406a86a60c5ead6f8eff?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard">littleguy</h4>
	<time class="c-time"><a href="#comment-4488" title="">11.13.12</a></time>
</div>
<div class="c-text">
	<p>Super excellent article! Amazing work!</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-odd thread-alt depth-1" id="comment-4672">
<div class="c-meta">
	<img alt='' src='http://2.gravatar.com/avatar/87057ff05fef73dba9f918ceba375abc?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://2.gravatar.com/avatar/87057ff05fef73dba9f918ceba375abc?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.janereinberg.com' rel='external nofollow' class='url'>Jane Reinberg</a></h4>
	<time class="c-time"><a href="#comment-4672" title="">11.19.12</a></time>
</div>
<div class="c-text">
	<p>Great article, Brad.  The examples, pros and cons are super helpful.  Thanks, again.</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-even depth-1" id="comment-4784">
<div class="c-meta">
	<img alt='' src='http://2.gravatar.com/avatar/bf67dc0da1bfeeb2f89c12585b48ae68?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://2.gravatar.com/avatar/bf67dc0da1bfeeb2f89c12585b48ae68?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.youtube.com/watch?v=KHG1gM77ozc&#038;feature=plcp' rel='external nofollow' class='url'>Surfing Movies</a></h4>
	<time class="c-time"><a href="#comment-4784" title="">11.25.12</a></time>
</div>
<div class="c-text">
	<p>Great article, Brad. The examples, pros and cons are super helpful.</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-odd thread-alt depth-1" id="comment-5422">
<div class="c-meta">
	<img alt='' src='http://0.gravatar.com/avatar/c5136fb1f4574860727c30feb7d92ff1?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://0.gravatar.com/avatar/c5136fb1f4574860727c30feb7d92ff1?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://twitter.com/jensnikolaus' rel='external nofollow' class='url'>jensnikolaus</a></h4>
	<time class="c-time"><a href="#comment-5422" title="">01.02.13</a></time>
</div>
<div class="c-text">
	<p>Fantastic resource, thank you!</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-even depth-1" id="comment-5431">
<div class="c-meta">
	<img alt='' src='http://0.gravatar.com/avatar/f4c123f9f1a652193eff32d86e62ff47?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://0.gravatar.com/avatar/f4c123f9f1a652193eff32d86e62ff47?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.digitalideaz.com/' rel='external nofollow' class='url'>digitalideaz</a></h4>
	<time class="c-time"><a href="#comment-5431" title="">01.03.13</a></time>
</div>
<div class="c-text">
	<p>This was very informative information Brad, thanks for updating us&#8230;&#8230;&#8230;..</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-odd thread-alt depth-1" id="comment-5454">
<div class="c-meta">
	<img alt='' src='http://1.gravatar.com/avatar/7a200ddc48834abd6a6fb38c8d080eef?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://1.gravatar.com/avatar/7a200ddc48834abd6a6fb38c8d080eef?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard">Subhash</h4>
	<time class="c-time"><a href="#comment-5454" title="">01.04.13</a></time>
</div>
<div class="c-text">
	<p>Thanks <img src="http://bradfrost.com/wp-includes/images/smilies/simple-smile.png" alt=":)" class="wp-smiley" style="height: 1em; max-height: 1em;" /></p>
<p>You saved me.</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-even depth-1" id="comment-5657">
<div class="c-meta">
	<img alt='' src='http://1.gravatar.com/avatar/4b527ca4fbf8ed72717c48c6c113bc02?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://1.gravatar.com/avatar/4b527ca4fbf8ed72717c48c6c113bc02?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard">Eric Mobley</h4>
	<time class="c-time"><a href="#comment-5657" title="">01.09.13</a></time>
</div>
<div class="c-text">
	<p>I really like the toggle method. Do you think the 3 horizontal bars has been used enough that users instinctively associate that with toggle navigation? </p>
<p>By users I mean my mom or any user who doesn&#8217;t live and breath web design and digital marketing like you and I.</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-odd thread-alt depth-1" id="comment-6020">
<div class="c-meta">
	<img alt='' src='http://0.gravatar.com/avatar/f1f136f8250619dfe9bac83a8a3b6a2c?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://0.gravatar.com/avatar/f1f136f8250619dfe9bac83a8a3b6a2c?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://tinyurl.com/eartjoice56296' rel='external nofollow' class='url'>http://tinyurl.com/eartjoice56296</a></h4>
	<time class="c-time"><a href="#comment-6020" title="">01.26.13</a></time>
</div>
<div class="c-text">
	<p>Thanks a lot for posting “Responsive Navigation Patterns”.<br />
I actuallywill certainly end up being back again for alot more browsing and writing<br />
comments shortly. Thank you, Shanna</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-even depth-1" id="comment-6115">
<div class="c-meta">
	<img alt='' src='http://2.gravatar.com/avatar/53a64b903c0f6763ec6e6788b681f164?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://2.gravatar.com/avatar/53a64b903c0f6763ec6e6788b681f164?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.alexander-kroll-online.de' rel='external nofollow' class='url'>Alex from Berlin, Germany</a></h4>
	<time class="c-time"><a href="#comment-6115" title="">01.31.13</a></time>
</div>
<div class="c-text">
	<p>Hi Brad, a great article, thanks a lot for posting!<br />
Even almost one year after you wrote the post, I found it very up to date and very fascinating!<br />
I promise to be back after trying out more&#8230;</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-odd thread-alt depth-1" id="comment-6240">
<div class="c-meta">
	<img alt='' src='http://0.gravatar.com/avatar/99f7f6553c81f10bbc506e6c65fb9a73?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://0.gravatar.com/avatar/99f7f6553c81f10bbc506e6c65fb9a73?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard">Joacim Nilsson</h4>
	<time class="c-time"><a href="#comment-6240" title="">02.10.13</a></time>
</div>
<div class="c-text">
	<p>Thanks Brad! </p>
<p>I&#8217;ve found a descent solution to navigate. loopia.com I think have the best example in use today with arrows. I could se this very easy to implement with an display:inline; and overflow:scroll; something like that:)</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-even depth-1" id="comment-6282">
<div class="c-meta">
	<img alt='' src='http://1.gravatar.com/avatar/7fb83c08665ad41f5eb414614d65bf09?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://1.gravatar.com/avatar/7fb83c08665ad41f5eb414614d65bf09?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.danielbough.com' rel='external nofollow' class='url'>Dan Bough</a></h4>
	<time class="c-time"><a href="#comment-6282" title="">02.14.13</a></time>
</div>
<div class="c-text">
	<p>Thanks for putting all of this info in one place!  Great reference material =).</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-odd thread-alt depth-1" id="comment-6365">
<div class="c-meta">
	<img alt='' src='http://2.gravatar.com/avatar/8386ac7ac722f92a64eb00a32b472b1d?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://2.gravatar.com/avatar/8386ac7ac722f92a64eb00a32b472b1d?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.pixelgrade.com' rel='external nofollow' class='url'>George Olaru</a></h4>
	<time class="c-time"><a href="#comment-6365" title="">02.24.13</a></time>
</div>
<div class="c-text">
	<p>Hi Brad,</p>
<p>What do you think about a &#8220;Header Anchor&#8221; version of responsive navigation? Very similar with Footer Anchor method but when you press the Menu button you go Up instead of go a lot of pixels Down.</p>
<p>In this way it`s naturally to keep the top navigation from desktop in the same place, instead of using some CSS tricks and the user will not be confused, because the navigation items are directly linked to the button that make them &#8220;appear&#8221;.</p>
<p>And the page it`s loaded just below the menu (using javascript &#8211; that could cause some troubles).</p>
<p>Thanks,<br />
George</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-even depth-1" id="comment-6436">
<div class="c-meta">
	<img alt='' src='http://1.gravatar.com/avatar/13e517927487e37cc8206076c38bcc2d?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://1.gravatar.com/avatar/13e517927487e37cc8206076c38bcc2d?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.i2bglobal.com' rel='external nofollow' class='url'>bojan</a></h4>
	<time class="c-time"><a href="#comment-6436" title="">02.27.13</a></time>
</div>
<div class="c-text">
	<p>very useful info, thanks!</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-odd thread-alt depth-1" id="comment-6633">
<div class="c-meta">
	<img alt='' src='http://0.gravatar.com/avatar/c6447711467330d08539dbfea598c508?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://0.gravatar.com/avatar/c6447711467330d08539dbfea598c508?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.aysberg.de' rel='external nofollow' class='url'>The Aysberg</a></h4>
	<time class="c-time"><a href="#comment-6633" title="">03.10.13</a></time>
</div>
<div class="c-text">
	<p>Thanks for the wrap-up. This is truly helpful in developing sophisticated responsive webdesign for our internet agency&#8217;s website!</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-even depth-1" id="comment-6883">
<div class="c-meta">
	<img alt='' src='http://2.gravatar.com/avatar/257f974ebcef876614642cea110f0ff9?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://2.gravatar.com/avatar/257f974ebcef876614642cea110f0ff9?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://www.pondera.me' rel='external nofollow' class='url'>Dan</a></h4>
	<time class="c-time"><a href="#comment-6883" title="">03.19.13</a></time>
</div>
<div class="c-text">
	<p>Excellent thanks!</p>
<p>For a site with 4-7 navigation items, I&#8217;m torn between The Toggle and The Footer Anchor. I agree the jump to the bottom can be jarring, but it does allow you to present a few more items.</p>
<p>The Footer Anchor also has another &#8220;Pro&#8221; that you didn&#8217;t mention. When users get to the bottom of the page by scrolling, there&#8217;s no &#8220;dead end&#8221; &#8211; the links are right there for them to continue exploring the site.</p>
<p>Do you know of any sites where they have combined a Toggle Menu at the top, with the menu repeated again in the footer? It&#8217;s a little inelegant to repeat the menu twice, but I think more people will use the menu at the bottom than will use the &#8220;back to top&#8221; link to get back to the navigation.</p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment odd alt thread-odd thread-alt depth-1" id="comment-6900">
<div class="c-meta">
	<img alt='' src='http://0.gravatar.com/avatar/ff82e29adc3eb0d96a02b55b7646e9d9?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://0.gravatar.com/avatar/ff82e29adc3eb0d96a02b55b7646e9d9?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard">Joseph Dickson</h4>
	<time class="c-time"><a href="#comment-6900" title="">03.19.13</a></time>
</div>
<div class="c-text">
	<p>&#8220;Reverie&#8221; a WordPress theme switched recently from a Fly Out menu to a Toggle.</p>
<p>Probably a result of rendering glitches on the Fly Out, and design limitations.</p>
<p>Toggle is their new choice and it is much smoother and not so alien to new users. </p>
<p>Check it out</p>
<p><a href="http://themefortress.com/demo/" rel="nofollow">http://themefortress.com/demo/</a></p>
	</div>
</li>
</li><!-- #comment-## -->
<li class="comment even thread-even depth-1" id="comment-6949">
<div class="c-meta">
	<img alt='' src='http://2.gravatar.com/avatar/ea213c447a199521d60b8f933ade32fc?s=154&#038;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&#038;r=g' srcset='http://2.gravatar.com/avatar/ea213c447a199521d60b8f933ade32fc?s=308&amp;d=http%3A%2F%2Fbradfrost.com%2Fwp-content%2Fthemes%2Fv7%2Fimages%2Favatar.png&amp;r=g 2x' class='avatar avatar-154 photo' height='154' width='154' />	<h4 class="vcard"><a href='http://webdevhub.co.uk' rel='external nofollow' class='url'>Samson</a></h4>
	<time class="c-time"><a href="#comment-6949" title="">03.21.13</a></time>
</div>
<div class="c-text">
	<p>Very timely as I am currently working on a responsive layout. Thanks a bunch!</p>
	</div>
</li>
</li><!-- #comment-## -->
		</ol>
	 
		<p><em>Comments are closed for this post. If you've got something to add, feel free to <a href="http://twitter.com/brad_frost" rel="external">reach out on Twitter</a>.</em></p>
	</div>
</div><!--end comments-->


 
</main><!--End role=main-->
<footer class="footer" role="contentinfo">
	<div class="lc">
		<div class="about-block">
			<a href="http://twitter.com/brad_frost" rel="external" class="about-block-img"><img src="http://bradfrost.com/wp-content/themes/v7/images/brad_frost.jpg" width="176" height="176" alt="Brad Frost" /></a>
			<p>I'm Brad Frost, a web designer, speaker, consultant, musician, and artist located in beautiful Pittsburgh, PA. I'm constantly <a href="http://twitter.com/brad_frost" rel="external">tweeting</a>, <a href="/blog">writing</a> and <a href="/speaking">speaking</a> about the web and other topics. I've also helped create some tools and resources for web designers, including <a href="http://bradfrost.github.io/this-is-responsive/">This Is Responsive</a>, <a href="http://pattern-lab.info/">Pattern Lab</a>, <a href="http://styleguides.io/">Styleguides.io</a>, <a href="http://wtfmobileweb.com/">WTF Mobile Web</a>, and <a href="http://mobilewebbestpractices.com/">Mobile Web Best Practices</a>. You can <a href="http://twitter.com/brad_frost" rel="external">follow me on Twitter</a>.</p>
		</div>
	</div>
</footer><!--End .footer-->
<script charset="utf-8">
        var cb = function() {
          var l = document.createElement('link'); l.rel = 'stylesheet';
          l.href = 'http://bradfrost.com/wp-content/themes/v7/style.css';
          var h = document.getElementsByTagName('head')[0]; h.parentNode.insertBefore(l, h);
        };
        var raf = requestAnimationFrame || mozRequestAnimationFrame ||
            webkitRequestAnimationFrame || msRequestAnimationFrame;
        if (raf) raf(cb);
        else window.addEventListener('load', cb);
</script>
<script src="http://bradfrost.com/wp-content/themes/v7/js/init.js"></script>
<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-2687475-3']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script></body>
</html>
<!-- Dynamic page generated in 0.859 seconds. -->
<!-- Cached page generated by WP-Super-Cache on 2015-05-21 06:09:35 -->

<!-- super cache -->