<!-- -*- mode: sgml; coding: euc-japan; -*- -->

<Title>
emacs-w3m mailing list
</Title>
<TTItle>
$IDXTITLE$
</TTitle>

<NoSubSort>
<NoMailTo>
<NoNews>
<!-- NoKeepOnRmm -->
<KeepOnRmm>
<Reverse>

<!-- 100記事単位で索引ページを分割する -->
<MultiPg>
<IdxSize>
100
</IdxSize>

<!-- 表題から [emacs-w3m:...] という部分を取り除く -->
<SubjectStripCode>
s/^\[[^\]]+\]//;
</SubjectStripCode>

<!-- 全てのへッダを表示対象から除外しない -->
<Excs Override>
(?!)
</Excs>

<!-- 以下に列挙したへッダのみを表示する -->
<FieldOrder>
from
date
x-ml-name
x-mail-count
references
</FieldOrder>

<!-- SPAM 対策 -->
<SPAMMODE>

<!-- shimbun ライブラリから参照する場合の後方互換性を保つために文字列を微調節 -->
<LiTemplate>
<li><strong>$SUBJECT$</strong> <em>$FROMNAME$</em></li>
</LiTemplate>

<!-- 微調節によって変更された日付順索引のスタイルとスレッド索引のスタイルを合わせる -->
<TLiTxt>
<li><strong>$SUBJECT$</strong> <em>$FROMNAME$</em>
</TLiTxt>

<!-- link タグを活用 -->
<!-- date index の場合は，直前・直後の index page を使う -->
<PrevPgLink chop>
[<A REL="previous" HREF="$PG(PREV)$">Prev Index</A>]
</PrevPgLink>
<PrevPgLinkIA chop>
[Prev Index]
</PrevPgLinkIA>
<NextPgLink chop>
[<A REL="next" HREF="$PG(NEXT)$">Next Index</A>]
</NextPgLink>
<NextPgLinkIA chop>
[Next Index]
</NextPgLinkIA>
<!-- thread index の場合は，直前・直後の index page を使う -->
<TPrevPgLink chop>
[<A REL="previous" HREF="$PG(TPREV)$">Prev Index</A>]
</TPrevPgLink>
<TPrevPgLinkIA chop>
[Prev Index]
</TPrevPgLinkIA>
<TNextPgLink chop>
[<A REL="next" HREF="$PG(TNEXT)$">Next Index</A>]
</TNextPgLink>
<TNextPgLinkIA chop>
[Next Index]
</TNextPgLinkIA>
<!-- 個別の記事の場合は，thread 上で直前・直後の記事を使う -->
<TPrevButton chop>
[<a rel="previous" href="$MSG(TPREV)$">Thread Prev</a>]
</TPrevButton>
<TNextButton chop>
[<a rel="next" href="$MSG(TNEXT)$">Thread Next</a>]
</TNextButton>

<!-- 個別の記事の先頭に表示されるリンクを調節 -->
<TopLinks>
<hr>
$BUTTON(PREV)$$BUTTON(NEXT)$$BUTTON(TPREV)$$BUTTON(TNEXT)$[<a href="$IDXFNAME$#$MSGNUM$">Date Index</a>][<a rel="contents" href="$TIDXFNAME$#$MSGNUM$">Thread Index</a>]
</TopLinks>

<!-- date index の先頭に namazu を呼び出す form を追加 -->
<ListBegin>
<ul>
<li><a href="$TIDXFNAME$">Thread Index</a></li>
<li><form method="GET" action="namazu.cgi" accept-charset="euc-jp,ascii">Namazu Search:
<input type="text" name="key" size="30">
<input type="submit" value="Find">
[<a href="namazu.cgi">Help</a>]
</form></li>
</ul>
<p>$PGLINK(PREV)$$PGLINK(NEXT)$</p>
<hr>
<ul>
</ListBegin>

<!-- thread index の先頭に namazu を呼び出す form を追加 -->
<THead>
<ul>
<li><a href="$IDXFNAME$">Date Index</a></li>
<li><form method="GET" action="namazu.cgi" accept-charset="euc-jp,ascii">Namazu Search:
<input type="text" name="key" size="30">
<input type="submit" value="Find">
[<a href="namazu.cgi">Help</a>]
</form></li>
</ul>
$PGLINK(TPREV)$$PGLINK(TNEXT)$
<hr>
<ul>
</THead>

<!-- 個別の記事の末尾に namazu を呼び出す form を追加 -->
<MsgFoot>
<ul>
<li><form method="GET" action="namazu.cgi" accept-charset="euc-jp,ascii">Namazu Search:
<input type="text" name="key" size="30">
<input type="submit" value="Find">
[<a href="namazu.cgi">Help</a>]
</form></li>
</ul>
</MsgFoot>

<IdxFName>
index.html
</IdxFName>

<!--
以下の設定は，
http://www.shiratori.riec.tohoku.ac.jp/~p-katoh/Hack/Docs/mhonarc-jp/mhonarc-jp-2_4.html
で紹介されていた日本語化のための設定をそのまま流用している．
-->
<DECODEHEADS>

<DEFCHARSET>
iso-2022-jp
</DEFCHARSET>

<MIMEARGS>
text/plain:default=iso-2022-jp
</MIMEARGS>

<CharsetConverters>
plain;          iso_2022_jp::str2html;		iso2022jp.pl
iso-2022-jp;    iso_2022_jp::str2html;		iso2022jp.pl
</CharsetConverters>

<MsgPgBegin>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML//EN">
<HTML>
<HEAD>
<TITLE>$SUBJECTNA$</TITLE>
</HEAD>
<BODY>
</MsgPgBegin>
