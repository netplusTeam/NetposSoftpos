.class public Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;
.super Ljava/lang/Object;
.source "CompareTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/kernel/utils/CompareTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ObjectPath"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$OffsetPathItem;,
        Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$ArrayPathItem;,
        Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$DictPathItem;,
        Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$LocalPathItem;,
        Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$IndirectPathItem;
    }
.end annotation


# instance fields
.field protected baseCmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

.field protected baseOutObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

.field protected indirects:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$IndirectPathItem;",
            ">;"
        }
    .end annotation
.end field

.field protected path:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$LocalPathItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/itextpdf/kernel/utils/CompareTool;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/utils/CompareTool;)V
    .locals 1
    .param p1, "this$0"    # Lcom/itextpdf/kernel/utils/CompareTool;

    .line 1985
    iput-object p1, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->this$0:Lcom/itextpdf/kernel/utils/CompareTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1979
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->path:Ljava/util/Stack;

    .line 1980
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->indirects:Ljava/util/Stack;

    .line 1986
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/utils/CompareTool;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V
    .locals 2
    .param p1, "this$0"    # Lcom/itextpdf/kernel/utils/CompareTool;
    .param p2, "baseCmpObject"    # Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .param p3, "baseOutObject"    # Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 1994
    iput-object p1, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->this$0:Lcom/itextpdf/kernel/utils/CompareTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1979
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->path:Ljava/util/Stack;

    .line 1980
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->indirects:Ljava/util/Stack;

    .line 1995
    iput-object p2, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->baseCmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 1996
    iput-object p3, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->baseOutObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 1997
    new-instance v1, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$IndirectPathItem;

    invoke-direct {v1, p0, p2, p3}, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$IndirectPathItem;-><init>(Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1998
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/utils/CompareTool;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Ljava/util/Stack;Ljava/util/Stack;)V
    .locals 1
    .param p1, "this$0"    # Lcom/itextpdf/kernel/utils/CompareTool;
    .param p2, "baseCmpObject"    # Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .param p3, "baseOutObject"    # Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            "Ljava/util/Stack<",
            "Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$LocalPathItem;",
            ">;",
            "Ljava/util/Stack<",
            "Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$IndirectPathItem;",
            ">;)V"
        }
    .end annotation

    .line 2001
    .local p4, "path":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$LocalPathItem;>;"
    .local p5, "indirects":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$IndirectPathItem;>;"
    iput-object p1, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->this$0:Lcom/itextpdf/kernel/utils/CompareTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1979
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->path:Ljava/util/Stack;

    .line 1980
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->indirects:Ljava/util/Stack;

    .line 2002
    iput-object p2, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->baseCmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 2003
    iput-object p3, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->baseOutObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 2004
    iput-object p4, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->path:Ljava/util/Stack;

    .line 2005
    iput-object p5, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->indirects:Ljava/util/Stack;

    .line 2006
    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 7

    .line 2220
    new-instance v6, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;

    iget-object v1, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->this$0:Lcom/itextpdf/kernel/utils/CompareTool;

    iget-object v2, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->baseCmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    iget-object v3, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->baseOutObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->path:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/Stack;

    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->indirects:Ljava/util/Stack;

    .line 2221
    invoke-virtual {v0}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/Stack;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;-><init>(Lcom/itextpdf/kernel/utils/CompareTool;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Ljava/util/Stack;Ljava/util/Stack;)V

    .line 2220
    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2180
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 2181
    return v0

    .line 2183
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_7

    .line 2186
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;

    .line 2193
    .local v2, "that":Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;
    iget-object v3, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->baseCmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    iget-object v4, v2, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->baseCmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    if-ne v3, v4, :cond_2

    .line 2194
    const/4 v3, 0x1

    .local v3, "isBaseCmpObjectEqual":Z
    goto :goto_2

    .line 2195
    .end local v3    # "isBaseCmpObjectEqual":Z
    :cond_2
    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    .line 2197
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, v2, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->baseCmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    goto :goto_1

    .line 2200
    :cond_3
    iget-object v3, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->baseCmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v3

    iget-object v4, v2, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->baseCmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v4

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->baseCmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 2201
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v3

    iget-object v4, v2, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->baseCmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v4

    if-ne v3, v4, :cond_4

    move v3, v0

    goto :goto_0

    :cond_4
    move v3, v1

    .restart local v3    # "isBaseCmpObjectEqual":Z
    :goto_0
    goto :goto_2

    .line 2198
    .end local v3    # "isBaseCmpObjectEqual":Z
    :cond_5
    :goto_1
    const/4 v3, 0x0

    .line 2204
    .restart local v3    # "isBaseCmpObjectEqual":Z
    :goto_2
    iget-object v4, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->baseOutObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    iget-object v5, v2, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->baseOutObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    if-ne v4, v5, :cond_6

    .line 2205
    const/4 v4, 0x1

    .local v4, "isBaseOutObjectEqual":Z
    goto :goto_5

    .line 2206
    .end local v4    # "isBaseOutObjectEqual":Z
    :cond_6
    if-eqz v4, :cond_9

    if-eqz v5, :cond_9

    .line 2208
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    iget-object v5, v2, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->baseOutObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_7

    goto :goto_4

    .line 2211
    :cond_7
    iget-object v4, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->baseOutObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v4

    iget-object v5, v2, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->baseOutObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v5

    if-ne v4, v5, :cond_8

    iget-object v4, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->baseOutObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 2212
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v4

    iget-object v5, v2, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->baseOutObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v5

    if-ne v4, v5, :cond_8

    move v4, v0

    goto :goto_3

    :cond_8
    move v4, v1

    .restart local v4    # "isBaseOutObjectEqual":Z
    :goto_3
    goto :goto_5

    .line 2209
    .end local v4    # "isBaseOutObjectEqual":Z
    :cond_9
    :goto_4
    const/4 v4, 0x0

    .line 2215
    .restart local v4    # "isBaseOutObjectEqual":Z
    :goto_5
    if-eqz v3, :cond_a

    if-eqz v4, :cond_a

    iget-object v5, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->path:Ljava/util/Stack;

    move-object v6, p1

    check-cast v6, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;

    iget-object v6, v6, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->path:Ljava/util/Stack;

    invoke-virtual {v5, v6}, Ljava/util/Stack;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_6

    :cond_a
    move v0, v1

    :goto_6
    return v0

    .line 2184
    .end local v2    # "that":Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;
    .end local v3    # "isBaseCmpObjectEqual":Z
    .end local v4    # "isBaseOutObjectEqual":Z
    :cond_b
    :goto_7
    return v1
.end method

.method public getBaseCmpObject()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .locals 1

    .line 2100
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->baseCmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    return-object v0
.end method

.method public getBaseOutObject()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .locals 1

    .line 2107
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->baseOutObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    return-object v0
.end method

.method public getIndirectPath()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$IndirectPathItem;",
            ">;"
        }
    .end annotation

    .line 2093
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->indirects:Ljava/util/Stack;

    return-object v0
.end method

.method public getLocalPath()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$LocalPathItem;",
            ">;"
        }
    .end annotation

    .line 2083
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->path:Ljava/util/Stack;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 2161
    const/4 v0, 0x0

    .line 2162
    .local v0, "baseCmpObjectHashCode":I
    iget-object v1, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->baseCmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    if-eqz v1, :cond_0

    .line 2163
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->baseCmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v2

    add-int v0, v1, v2

    .line 2165
    :cond_0
    const/4 v1, 0x0

    .line 2166
    .local v1, "baseOutObjectHashCode":I
    iget-object v2, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->baseOutObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    if-eqz v2, :cond_1

    .line 2167
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1f

    iget-object v3, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->baseOutObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v3

    add-int v1, v2, v3

    .line 2170
    :cond_1
    mul-int/lit8 v2, v0, 0x1f

    add-int/2addr v2, v1

    .line 2171
    .local v2, "hashCode":I
    iget-object v3, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->path:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$LocalPathItem;

    .line 2172
    .local v4, "pathItem":Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$LocalPathItem;
    mul-int/lit8 v2, v2, 0x1f

    .line 2173
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v2, v5

    .line 2174
    .end local v4    # "pathItem":Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$LocalPathItem;
    goto :goto_0

    .line 2175
    :cond_2
    return v2
.end method

.method public isComparing(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Z
    .locals 2
    .param p1, "cmpObject"    # Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .param p2, "outObject"    # Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 2039
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->indirects:Ljava/util/Stack;

    new-instance v1, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$IndirectPathItem;

    invoke-direct {v1, p0, p1, p2}, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$IndirectPathItem;-><init>(Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public pop()V
    .locals 1

    .line 2073
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->path:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 2074
    return-void
.end method

.method public pushArrayItemToPath(I)V
    .locals 2
    .param p1, "index"    # I

    .line 2048
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->path:Ljava/util/Stack;

    new-instance v1, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$ArrayPathItem;

    invoke-direct {v1, p0, p1}, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$ArrayPathItem;-><init>(Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;I)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2049
    return-void
.end method

.method public pushDictItemToPath(Lcom/itextpdf/kernel/pdf/PdfName;)V
    .locals 2
    .param p1, "key"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 2057
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->path:Ljava/util/Stack;

    new-instance v1, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$DictPathItem;

    invoke-direct {v1, p0, p1}, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$DictPathItem;-><init>(Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Lcom/itextpdf/kernel/pdf/PdfName;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2058
    return-void
.end method

.method public pushOffsetToPath(I)V
    .locals 2
    .param p1, "offset"    # I

    .line 2066
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->path:Ljava/util/Stack;

    new-instance v1, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$OffsetPathItem;

    invoke-direct {v1, p0, p1}, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$OffsetPathItem;-><init>(Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;I)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2067
    return-void
.end method

.method public resetDirectPath(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;
    .locals 7
    .param p1, "baseCmpObject"    # Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .param p2, "baseOutObject"    # Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 2023
    new-instance v6, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;

    iget-object v1, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->this$0:Lcom/itextpdf/kernel/utils/CompareTool;

    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->indirects:Ljava/util/Stack;

    .line 2024
    invoke-virtual {v0}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/Stack;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;-><init>(Lcom/itextpdf/kernel/utils/CompareTool;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Ljava/util/Stack;Ljava/util/Stack;)V

    .line 2025
    .local v0, "newPath":Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;
    iget-object v1, v0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->indirects:Ljava/util/Stack;

    new-instance v2, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$IndirectPathItem;

    invoke-direct {v2, p0, p1, p2}, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$IndirectPathItem;-><init>(Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2026
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 2139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2140
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->baseCmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->baseOutObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Base cmp object: {0} obj. Base out object: {1} obj"

    invoke-static {v2, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2142
    iget-object v1, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->path:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Stack;

    .line 2143
    .local v1, "pathClone":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$LocalPathItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->path:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2144
    .local v2, "localPathItems":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$LocalPathItem;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->path:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 2145
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2144
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2147
    .end local v4    # "i":I
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .restart local v4    # "i":I
    :goto_1
    if-ltz v4, :cond_1

    .line 2148
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2149
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$LocalPathItem;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2147
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2151
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public toXmlNode(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Node;
    .locals 8
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .line 2117
    const-string v0, "path"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 2118
    .local v0, "element":Lorg/w3c/dom/Element;
    const-string v1, "base"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 2119
    .local v1, "baseNode":Lorg/w3c/dom/Element;
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->baseCmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->baseCmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string/jumbo v4, "{0} {1} obj"

    invoke-static {v4, v3}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "cmp"

    invoke-interface {v1, v7, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2120
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->baseOutObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->baseOutObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v4, v2}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "out"

    invoke-interface {v1, v3, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2121
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2122
    iget-object v2, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->path:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Stack;

    .line 2123
    .local v2, "pathClone":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$LocalPathItem;>;"
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->path:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2124
    .local v3, "localPathItems":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$LocalPathItem;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath;->path:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 2125
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2124
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2128
    .end local v4    # "i":I
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v6

    .restart local v4    # "i":I
    :goto_1
    if-ltz v4, :cond_1

    .line 2129
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$LocalPathItem;

    invoke-virtual {v5, p1}, Lcom/itextpdf/kernel/utils/CompareTool$ObjectPath$LocalPathItem;->toXmlNode(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2128
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2131
    .end local v4    # "i":I
    :cond_1
    return-object v0
.end method
