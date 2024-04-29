<style>
  .reveal {
    font-size: 40px !important; 
  }
.reveal h1,
.reveal h2,
.reveal h3,
.reveal h4,
.reveal h5,
.reveal h6 {
  /* Save some space on the slides */
  margin: 0 0 20px 0;
}
</style>

<!-- .slide: style="text-align: center !important;font-size: 75%;"  -->
<!-- .slide: data-background-image="dist/theme/images/title-white.svg"  -->

<svg version="1.1" id="layer1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 1010 1010" style="enable-background:new 0 0 1010 1010;" xml:space="preserve" width="10%">
    <style type="text/css">
        .st0{fill:#23A3DD;}
    </style>
    <path class="st0" d="M1006,550.9c1.3-14.9,2-30,2-45.2s-0.7-30.3-2-45.2l-121.6-34.9c-2.8-13.3-6.4-26.5-10.6-39.8  c-4.3-13.2-9.2-26-14.8-38.4l77.9-99.6c-7.7-12.8-16-25.4-25-37.8c-9-12.3-18.4-24.1-28.2-35.4l-118.8,43.2  c-20.5-18.5-42.8-34.6-66.5-48.3l4.4-126.4c-13.8-5.9-27.9-11.2-42.4-15.9s-29.1-8.7-43.6-12.1L546.1,120c-27-2.9-54.6-3-82.3,0  L393.2,15.2c-14.6,3.3-29.1,7.4-43.6,12.1s-28.6,10-42.4,15.9l4.4,126.3c-3.9,2.2-7.7,4.6-11.5,6.9l114.3,114.3  c9.2-4,19.3-6.2,29.9-6.2c41.6,0,75.3,33.7,75.3,75.3c0,10.6-2.2,20.7-6.2,29.9l80.6,80.6c9.2-4,19.3-6.2,29.9-6.2  c41.6,0,75.3,33.7,75.3,75.3s-33.7,75.3-75.3,75.3s-75.3-33.7-75.3-75.3c0-10.6,2.2-20.7,6.2-29.9L474.2,429  c-0.7,0.3-1.4,0.6-2.1,0.9v219.3c27.9,11,47.6,38.2,47.6,70c0,41.6-33.7,75.3-75.3,75.3s-75.3-33.7-75.3-75.3  c0-31.8,19.7-59,47.6-70V429.9c-27.9-11-47.6-38.2-47.6-70c0-10.6,2.2-20.7,6.2-29.9L254.6,209.5c-3.2,2.7-6.5,5.5-9.6,8.4  l-118.8-43.2C116.4,186,107,197.8,98,210.1S80.7,235,73,247.9l77.9,99.7c-11.2,25-19.7,51.2-25.5,78.2L4,460.5  c-1.3,14.9-2,30-2,45.2s0.7,30.3,2,45.2l121.6,34.9c2.8,13.3,6.4,26.5,10.6,39.8c4.3,13.2,9.2,26,14.8,38.4l-77.9,99.6  c7.7,12.8,16,25.4,25,37.8s18.4,24.1,28.2,35.4l118.8-43.2c20.5,18.5,42.8,34.6,66.5,48.3l-4.4,126.4c13.8,5.9,27.9,11.2,42.4,15.9  s29.1,8.7,43.6,12.1l70.7-104.8c27,2.9,54.6,3,82.3,0l70.7,104.8c14.6-3.3,29.1-7.4,43.6-12.1s28.6-10,42.4-15.9L698.5,842  c24.1-13.9,46.4-30.1,66.6-48.3l118.8,43.2c9.8-11.3,19.2-23.1,28.2-35.4c9-12.3,17.3-24.9,25-37.8L859,663.9  c11.2-25,19.7-51.2,25.5-78.2L1006,550.9z">
        <animateTransform
            attributeName="transform"
            begin="0s"
            dur="20s"
            type="rotate"
            from="0 505 505"
            to="360 505 505"
            repeatCount="indefinite"/>
    </path>
</svg>

<h1 class="title" style="margin: 0">
    <span class="title-accent">//</span> 
    GitOps: is this something for me<br/>– or not?
</h1>
<p style="margin-top: 0">Johannes Schnatterer, Cloudogu GmbH</p> 
<a style="margin: 0" title="Link to slides" href="https://cloudogu.github.io/gitops-talks">
    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xml:space="preserve" width="15%" viewBox="0 0 990 1155"><g transform="scale(41.25)" fill="#23a3dd"><path d="M1.3,28L22.6,28c0.7,0,1.3-0.6,1.3-1.3L24,1.4c0-0.7-0.6-1.3-1.3-1.3L1.4,0C0.7,0,0.1,0.6,0,1.3L0,26.6 C-0.1,27.4,0.5,28,1.3,28z M1,6c0-0.6,0.5-1,1-1L22,5c0.6,0,1,0.5,1,1L23,26c0,0.6-0.5,1-1,1L2,27c-0.6,0-1-0.5-1-1L1,6z"/></g>
        <g transform="translate(0,165)" fill="#23a3dd">
    <g transform="translate(291,99) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(315,99) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(387,99) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(459,99) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(507,99) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(555,99) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(579,99) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(651,99) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(363,123) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(387,123) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(483,123) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(507,123) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(603,123) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(627,123) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(675,123) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(315,147) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(339,147) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(363,147) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(387,147) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(435,147) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(483,147) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(507,147) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(531,147) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(603,147) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(315,171) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(411,171) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(435,171) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(483,171) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(555,171) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(579,171) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(627,171) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(675,171) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(291,195) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(363,195) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(411,195) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(483,195) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(531,195) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(651,195) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(291,219) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(363,219) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(387,219) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(459,219) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(579,219) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(627,219) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(291,243) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(339,243) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(387,243) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(435,243) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(483,243) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(531,243) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(579,243) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(627,243) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(675,243) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(315,267) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(363,267) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(411,267) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(435,267) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(459,267) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(483,267) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(603,267) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(627,267) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(675,267) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(123,291) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(147,291) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(171,291) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(195,291) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(219,291) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(243,291) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(267,291) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(315,291) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(387,291) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(411,291) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(435,291) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(483,291) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(507,291) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(627,291) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(675,291) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(747,291) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(771,291) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(867,291) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(123,315) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(195,315) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(267,315) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(339,315) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(459,315) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(483,315) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(531,315) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(555,315) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(579,315) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(651,315) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(723,315) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(747,315) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(795,315) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(819,315) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(867,315) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(123,339) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(243,339) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(267,339) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(291,339) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(315,339) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(363,339) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(387,339) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(411,339) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(483,339) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(531,339) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(699,339) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(723,339) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(771,339) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(819,339) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(843,339) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(99,363) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(123,363) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(147,363) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(171,363) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(195,363) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(363,363) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(387,363) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(435,363) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(483,363) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(579,363) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(603,363) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(627,363) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(699,363) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(723,363) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(771,363) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(795,363) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(819,363) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(843,363) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(99,387) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(243,387) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(267,387) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(339,387) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(387,387) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(531,387) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(627,387) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(675,387) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(699,387) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(747,387) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(771,387) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(795,387) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(867,387) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(147,411) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(171,411) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(267,411) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(291,411) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(339,411) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(387,411) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(411,411) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(507,411) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(579,411) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(603,411) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(627,411) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(651,411) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(699,411) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(723,411) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(795,411) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(843,411) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(867,411) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(171,435) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(195,435) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(219,435) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(243,435) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(267,435) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(291,435) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(315,435) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(363,435) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(387,435) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(411,435) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(435,435) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(459,435) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(555,435) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(627,435) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(675,435) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(699,435) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(723,435) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(747,435) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(795,435) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(843,435) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(147,459) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(291,459) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(339,459) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(459,459) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(507,459) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(531,459) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(555,459) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(579,459) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(603,459) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(627,459) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(699,459) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(723,459) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(819,459) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(99,483) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(123,483) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(147,483) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(171,483) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(243,483) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(267,483) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(291,483) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(435,483) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(507,483) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(531,483) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(555,483) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(579,483) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(627,483) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(699,483) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(747,483) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(771,483) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(867,483) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(123,507) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(267,507) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(291,507) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(315,507) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(339,507) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(387,507) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(411,507) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(435,507) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(459,507) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(555,507) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(579,507) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(603,507) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(627,507) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(651,507) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(723,507) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(747,507) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(795,507) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(819,507) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(867,507) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(171,531) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(219,531) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(243,531) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(267,531) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(291,531) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(315,531) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(339,531) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(363,531) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(387,531) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(435,531) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(459,531) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(483,531) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(531,531) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(579,531) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(747,531) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(771,531) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(819,531) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(843,531) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(123,555) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(267,555) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(315,555) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(339,555) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(363,555) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(387,555) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(411,555) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(459,555) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(531,555) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(603,555) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(627,555) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(651,555) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(747,555) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(771,555) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(795,555) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(819,555) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(867,555) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(123,579) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(219,579) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(243,579) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(267,579) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(363,579) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(387,579) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(411,579) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(435,579) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(483,579) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(507,579) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(531,579) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(555,579) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(579,579) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(651,579) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(699,579) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(771,579) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(795,579) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(843,579) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(867,579) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(99,603) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(147,603) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(171,603) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(195,603) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(267,603) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(291,603) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(339,603) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(363,603) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(387,603) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(411,603) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(483,603) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(603,603) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(651,603) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(699,603) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(723,603) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(795,603) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(867,603) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(99,627) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(147,627) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(171,627) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(243,627) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(267,627) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(339,627) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(363,627) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(387,627) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(411,627) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(507,627) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(531,627) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(579,627) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(603,627) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(627,627) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(795,627) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(843,627) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(99,651) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(147,651) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(171,651) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(195,651) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(267,651) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(315,651) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(339,651) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(411,651) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(459,651) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(507,651) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(603,651) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(627,651) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(699,651) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(723,651) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(747,651) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(771,651) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(795,651) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(819,651) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(99,675) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(195,675) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(243,675) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(291,675) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(315,675) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(363,675) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(411,675) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(507,675) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(651,675) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(675,675) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(699,675) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(723,675) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(747,675) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(771,675) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(867,675) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(291,699) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(339,699) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(363,699) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(411,699) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(435,699) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(459,699) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(507,699) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(531,699) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(555,699) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(579,699) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(675,699) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(771,699) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(819,699) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(867,699) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(291,723) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(315,723) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(411,723) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(483,723) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(531,723) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(579,723) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(627,723) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(651,723) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(675,723) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(723,723) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(771,723) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(819,723) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(291,747) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(315,747) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(363,747) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(387,747) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(411,747) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(435,747) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(507,747) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(555,747) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(579,747) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(603,747) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(627,747) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(651,747) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(675,747) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(771,747) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(795,747) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(819,747) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(867,747) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(291,771) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(315,771) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(339,771) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(363,771) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(387,771) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(411,771) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(459,771) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(507,771) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(603,771) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(675,771) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(699,771) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(723,771) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(747,771) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(771,771) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(795,771) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(291,795) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(315,795) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(339,795) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(411,795) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(459,795) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(483,795) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(579,795) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(675,795) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(699,795) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(771,795) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(795,795) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(819,795) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(867,795) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(291,819) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(363,819) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(387,819) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(507,819) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(555,819) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(627,819) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(651,819) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(723,819) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(747,819) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(795,819) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(291,843) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(315,843) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(387,843) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(411,843) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(459,843) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(483,843) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(531,843) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(555,843) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(579,843) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(603,843) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(771,843) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(795,843) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(819,843) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(315,867) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(411,867) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(435,867) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(531,867) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(555,867) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(627,867) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(675,867) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(699,867) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(723,867) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(747,867) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(843,867) scale(4.12)"><rect width="6" height="6"/></g>
            <g transform="translate(99,99)"><g transform="scale(12)"><path d="M14,0H4.4C2,0,0,2,0,4.4V14h14V0z M2,12V4.8C2,3.3,3.3,2,4.8,2H12v10H2z"/></g></g>
            <g transform="translate(723,99)"><g transform="scale(12) rotate(90 7 7)"><path d="M14,0H4.4C2,0,0,2,0,4.4V14h14V0z M2,12V4.8C2,3.3,3.3,2,4.8,2H12v10H2z"/></g></g>
            <g transform="translate(99,723)"><g transform="scale(12) rotate(-90 7 7)"><path d="M14,0H4.4C2,0,0,2,0,4.4V14h14V0z M2,12V4.8C2,3.3,3.3,2,4.8,2H12v10H2z"/></g></g>
            <g transform="translate(147,147)"><g transform="scale(12)"><rect width="6" height="6"/></g></g>
            <g transform="translate(771,147)"><g transform="scale(12)"><rect width="6" height="6"/></g></g>
            <g transform="translate(147,771)"><g transform="scale(12)"><rect width="6" height="6"/></g></g>
    </g>
        <text
                x="50%"
                y="150"
                alignment-baseline="middle"
                text-anchor="middle"
                style="font-size:120px;font-weight:bold;">
        <tspan>Slides</tspan>
      </text>
    </svg>
</a>
<div>
<a href='https://floss.social/@schnatterer' style="font-size:80%"><i class='fab fa-mastodon'></i> @schnatterer@floss.social</a> 
<a href='https://www.linkedin.com/in/jschnatterer' target="_blank" style="font-size:80%; margin: 50px"><i class='fab fa-linkedin'></i> in/jschnatterer</a>
<a href='https://twitter.com/jschnatterer' style="font-size:80%; margin: 50px"><i class='fab fa-twitter'></i> @jschnatterer</a>
</div>

<div class="title-version">
Version: 202404291700-4f4f101
</div>

<p id="pdf" class="state-background" style="font-size: 70%">
    <a href="pdf/GitOps is this something for me - or not.pdf">
       <i class="far fa-file-pdf"></i>
</a></p>



<!-- .slide: style="font-size: 190%;"  -->
## Agenda

- Basics
- Tools
- Challenges
- 🍕 💬 🍻
