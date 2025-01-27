.class public final Lcom/itextpdf/layout/font/FontFamilySplitter;
.super Ljava/lang/Object;
.source "FontFamilySplitter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final FONT_FAMILY_PATTERN:Ljava/util/regex/Pattern;

.field private static final FONT_FAMILY_PATTERN_QUOTED:Ljava/util/regex/Pattern;

.field private static final FONT_FAMILY_PATTERN_QUOTED_SELECT:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-string v0, "^ *([\\w-]+) *$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/layout/font/FontFamilySplitter;->FONT_FAMILY_PATTERN:Ljava/util/regex/Pattern;

    .line 58
    const-string v0, "^ *((\'[\\w -]+\')|(\"[\\w -]+\")) *$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/layout/font/FontFamilySplitter;->FONT_FAMILY_PATTERN_QUOTED:Ljava/util/regex/Pattern;

    .line 59
    const-string v0, "[\\w-]+( +[\\w-]+)*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/layout/font/FontFamilySplitter;->FONT_FAMILY_PATTERN_QUOTED_SELECT:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static removeQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fontFamily"    # Ljava/lang/String;

    .line 82
    sget-object v0, Lcom/itextpdf/layout/font/FontFamilySplitter;->FONT_FAMILY_PATTERN_QUOTED_SELECT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 83
    .local v0, "selectMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 86
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static splitFontFamily(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "fontFamilies"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 62
    if-nez p0, :cond_0

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "names":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 69
    .local v4, "name":Ljava/lang/String;
    sget-object v5, Lcom/itextpdf/layout/font/FontFamilySplitter;->FONT_FAMILY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 70
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 71
    :cond_1
    sget-object v5, Lcom/itextpdf/layout/font/FontFamilySplitter;->FONT_FAMILY_PATTERN_QUOTED:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 72
    sget-object v5, Lcom/itextpdf/layout/font/FontFamilySplitter;->FONT_FAMILY_PATTERN_QUOTED_SELECT:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 73
    .local v5, "selectMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 74
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "selectMatcher":Ljava/util/regex/Matcher;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 78
    :cond_3
    return-object v1
.end method
