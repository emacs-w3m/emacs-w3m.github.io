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

<!-- 100����ñ�̤Ǻ����ڡ�����ʬ�䤹�� -->
<MultiPg>
<IdxSize>
100
</IdxSize>

<!-- ɽ�꤫�� [emacs-w3m:...] �Ȥ�����ʬ������� -->
<SubjectStripCode>
s/^\[[^\]]+\]//;
</SubjectStripCode>

<!-- ���ƤΤإå���ɽ���оݤ���������ʤ� -->
<Excs Override>
(?!)
</Excs>

<!-- �ʲ�����󤷤��إå��Τߤ�ɽ������ -->
<FieldOrder>
from
date
x-ml-name
x-mail-count
references
</FieldOrder>

<!-- SPAM �к� -->
<SPAMMODE>

<!-- shimbun �饤�֥�꤫�黲�Ȥ�����θ����ߴ������ݤĤ����ʸ�������Ĵ�� -->
<LiTemplate>
<li><strong>$SUBJECT$</strong> <em>$FROMNAME$</em></li>
</LiTemplate>

<!-- ��Ĵ��ˤ�ä��ѹ����줿���ս�����Υ�������ȥ���åɺ����Υ���������碌�� -->
<TLiTxt>
<li><strong>$SUBJECT$</strong> <em>$FROMNAME$</em>
</TLiTxt>

<!-- link ��������� -->
<!-- date index �ξ��ϡ�ľ����ľ��� index page ��Ȥ� -->
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
<!-- thread index �ξ��ϡ�ľ����ľ��� index page ��Ȥ� -->
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
<!-- ���̤ε����ξ��ϡ�thread ���ľ����ľ��ε�����Ȥ� -->
<TPrevButton chop>
[<a rel="previous" href="$MSG(TPREV)$">Thread Prev</a>]
</TPrevButton>
<TNextButton chop>
[<a rel="next" href="$MSG(TNEXT)$">Thread Next</a>]
</TNextButton>

<!-- ���̤ε�������Ƭ��ɽ��������󥯤�Ĵ�� -->
<TopLinks>
<hr>
$BUTTON(PREV)$$BUTTON(NEXT)$$BUTTON(TPREV)$$BUTTON(TNEXT)$[<a href="$IDXFNAME$#$MSGNUM$">Date Index</a>][<a rel="contents" href="$TIDXFNAME$#$MSGNUM$">Thread Index</a>]
</TopLinks>

<!-- date index ����Ƭ�� namazu ��ƤӽФ� form ���ɲ� -->
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

<!-- thread index ����Ƭ�� namazu ��ƤӽФ� form ���ɲ� -->
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

<!-- ���̤ε����������� namazu ��ƤӽФ� form ���ɲ� -->
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
�ʲ�������ϡ�
http://www.shiratori.riec.tohoku.ac.jp/~p-katoh/Hack/Docs/mhonarc-jp/mhonarc-jp-2_4.html
�ǾҲ𤵤�Ƥ������ܸ첽�Τ��������򤽤Τޤ�ή�Ѥ��Ƥ��롥
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
