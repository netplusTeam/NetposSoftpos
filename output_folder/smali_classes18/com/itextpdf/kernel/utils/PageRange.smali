.class public Lcom/itextpdf/kernel/utils/PageRange;
.super Ljava/lang/Object;
.source "PageRange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/utils/PageRange$PageRangePartAnd;,
        Lcom/itextpdf/kernel/utils/PageRange$PageRangePartOddEven;,
        Lcom/itextpdf/kernel/utils/PageRange$PageRangePartAfter;,
        Lcom/itextpdf/kernel/utils/PageRange$PageRangePartSequence;,
        Lcom/itextpdf/kernel/utils/PageRange$PageRangePartSingle;,
        Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;
    }
.end annotation


# static fields
.field private static final SEQUENCE_PATTERN:Ljava/util/regex/Pattern;

.field private static final SINGLE_PAGE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private sequences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-string v0, "(\\d+)-(\\d+)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/utils/PageRange;->SEQUENCE_PATTERN:Ljava/util/regex/Pattern;

    .line 60
    const-string v0, "(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/utils/PageRange;->SINGLE_PAGE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/utils/PageRange;->sequences:Ljava/util/List;

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "pageRange"    # Ljava/lang/String;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/utils/PageRange;->sequences:Ljava/util/List;

    .line 85
    const-string v0, "\\s+"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 86
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 87
    .local v3, "pageRangePart":Ljava/lang/String;
    invoke-static {v3}, Lcom/itextpdf/kernel/utils/PageRange;->getRangeObject(Ljava/lang/String;)Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;

    move-result-object v4

    .line 88
    .local v4, "cond":Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;
    if-eqz v4, :cond_0

    .line 89
    iget-object v5, p0, Lcom/itextpdf/kernel/utils/PageRange;->sequences:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .end local v3    # "pageRangePart":Ljava/lang/String;
    .end local v4    # "cond":Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    :cond_1
    return-void
.end method

.method private static getRangeObject(Ljava/lang/String;)Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;
    .locals 8
    .param p0, "rangeDef"    # Ljava/lang/String;

    .line 95
    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v1, "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;>;"
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v0, v5

    .line 98
    .local v6, "pageRangeCond":Ljava/lang/String;
    invoke-static {v6}, Lcom/itextpdf/kernel/utils/PageRange;->getRangeObject(Ljava/lang/String;)Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;

    move-result-object v7

    .line 99
    .local v7, "cond":Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;
    if-eqz v7, :cond_0

    .line 100
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .end local v6    # "pageRangeCond":Ljava/lang/String;
    .end local v7    # "cond":Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 103
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 104
    new-instance v0, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartAnd;

    new-array v2, v4, [Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;

    invoke-direct {v0, v2}, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartAnd;-><init>([Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;)V

    return-object v0

    .line 106
    :cond_2
    return-object v2

    .line 110
    .end local v1    # "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;>;"
    :cond_3
    sget-object v0, Lcom/itextpdf/kernel/utils/PageRange;->SEQUENCE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    move-object v1, v0

    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    .line 111
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 112
    .local v0, "start":I
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 113
    new-instance v3, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartSequence;

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v3, v0, v2}, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartSequence;-><init>(II)V

    return-object v3

    .line 115
    :cond_4
    new-instance v2, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartAfter;

    invoke-direct {v2, v0}, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartAfter;-><init>(I)V

    return-object v2

    .line 117
    .end local v0    # "start":I
    :cond_5
    sget-object v0, Lcom/itextpdf/kernel/utils/PageRange;->SINGLE_PAGE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    move-object v1, v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 118
    new-instance v0, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartSingle;

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartSingle;-><init>(I)V

    return-object v0

    .line 119
    :cond_6
    const-string v0, "odd"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 120
    sget-object v0, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartOddEven;->ODD:Lcom/itextpdf/kernel/utils/PageRange$PageRangePartOddEven;

    return-object v0

    .line 121
    :cond_7
    const-string v0, "even"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 122
    sget-object v0, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartOddEven;->EVEN:Lcom/itextpdf/kernel/utils/PageRange$PageRangePartOddEven;

    return-object v0

    .line 124
    :cond_8
    return-object v2
.end method


# virtual methods
.method public addPageRangePart(Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;)Lcom/itextpdf/kernel/utils/PageRange;
    .locals 1
    .param p1, "part"    # Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;

    .line 136
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/PageRange;->sequences:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    return-object p0
.end method

.method public addPageSequence(II)Lcom/itextpdf/kernel/utils/PageRange;
    .locals 1
    .param p1, "startPageNumber"    # I
    .param p2, "endPageNumber"    # I

    .line 148
    new-instance v0, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartSequence;

    invoke-direct {v0, p1, p2}, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartSequence;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/utils/PageRange;->addPageRangePart(Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;)Lcom/itextpdf/kernel/utils/PageRange;

    move-result-object v0

    return-object v0
.end method

.method public addSinglePage(I)Lcom/itextpdf/kernel/utils/PageRange;
    .locals 1
    .param p1, "pageNumber"    # I

    .line 158
    new-instance v0, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartSingle;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/utils/PageRange$PageRangePartSingle;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/utils/PageRange;->addPageRangePart(Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;)Lcom/itextpdf/kernel/utils/PageRange;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 198
    instance-of v0, p1, Lcom/itextpdf/kernel/utils/PageRange;

    if-nez v0, :cond_0

    .line 199
    const/4 v0, 0x0

    return v0

    .line 202
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/utils/PageRange;

    .line 203
    .local v0, "other":Lcom/itextpdf/kernel/utils/PageRange;
    iget-object v1, p0, Lcom/itextpdf/kernel/utils/PageRange;->sequences:Ljava/util/List;

    iget-object v2, v0, Lcom/itextpdf/kernel/utils/PageRange;->sequences:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getQualifyingPageNums(I)Ljava/util/List;
    .locals 4
    .param p1, "nbPages"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v0, "allPages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/itextpdf/kernel/utils/PageRange;->sequences:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;

    .line 172
    .local v2, "sequence":Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;
    invoke-interface {v2, p1}, Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;->getAllPagesInRange(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 173
    .end local v2    # "sequence":Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;
    goto :goto_0

    .line 174
    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, "hashCode":I
    iget-object v1, p0, Lcom/itextpdf/kernel/utils/PageRange;->sequences:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;

    .line 213
    .local v2, "part":Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 214
    .end local v2    # "part":Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;
    goto :goto_0

    .line 216
    :cond_0
    return v0
.end method

.method public isPageInRange(I)Z
    .locals 3
    .param p1, "pageNumber"    # I

    .line 185
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/PageRange;->sequences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;

    .line 186
    .local v1, "sequence":Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;
    invoke-interface {v1, p1}, Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;->isPageInRange(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    const/4 v0, 0x1

    return v0

    .line 189
    .end local v1    # "sequence":Lcom/itextpdf/kernel/utils/PageRange$IPageRangePart;
    :cond_0
    goto :goto_0

    .line 190
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
