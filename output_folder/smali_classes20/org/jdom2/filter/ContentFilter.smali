.class public Lorg/jdom2/filter/ContentFilter;
.super Lorg/jdom2/filter/AbstractFilter;
.source "ContentFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jdom2/filter/AbstractFilter<",
        "Lorg/jdom2/Content;",
        ">;"
    }
.end annotation


# static fields
.field public static final CDATA:I = 0x2

.field public static final COMMENT:I = 0x8

.field public static final DOCTYPE:I = 0x80

.field public static final DOCUMENT:I = 0x40

.field public static final ELEMENT:I = 0x1

.field public static final ENTITYREF:I = 0x20

.field public static final PI:I = 0x10

.field public static final TEXT:I = 0x4

.field private static final serialVersionUID:J = 0xc8L


# instance fields
.field private filterMask:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Lorg/jdom2/filter/AbstractFilter;-><init>()V

    .line 120
    invoke-virtual {p0}, Lorg/jdom2/filter/ContentFilter;->setDefaultMask()V

    .line 121
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "mask"    # I

    .line 143
    invoke-direct {p0}, Lorg/jdom2/filter/AbstractFilter;-><init>()V

    .line 144
    invoke-virtual {p0, p1}, Lorg/jdom2/filter/ContentFilter;->setFilterMask(I)V

    .line 145
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "allVisible"    # Z

    .line 129
    invoke-direct {p0}, Lorg/jdom2/filter/AbstractFilter;-><init>()V

    .line 130
    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p0}, Lorg/jdom2/filter/ContentFilter;->setDefaultMask()V

    goto :goto_0

    .line 134
    :cond_0
    iget v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    not-int v1, v0

    and-int/2addr v0, v1

    iput v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    .line 136
    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 349
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 350
    :cond_0
    instance-of v1, p1, Lorg/jdom2/filter/ContentFilter;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 352
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/jdom2/filter/ContentFilter;

    .line 354
    .local v1, "filter":Lorg/jdom2/filter/ContentFilter;
    iget v3, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    iget v4, v1, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    if-eq v3, v4, :cond_2

    return v2

    .line 356
    :cond_2
    return v0
.end method

.method public bridge synthetic filter(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 82
    invoke-virtual {p0, p1}, Lorg/jdom2/filter/ContentFilter;->filter(Ljava/lang/Object;)Lorg/jdom2/Content;

    move-result-object v0

    return-object v0
.end method

.method public filter(Ljava/lang/Object;)Lorg/jdom2/Content;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 305
    const/4 v0, 0x0

    if-eqz p1, :cond_f

    const-class v1, Lorg/jdom2/Content;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 309
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/jdom2/Content;

    .line 311
    .local v1, "content":Lorg/jdom2/Content;
    instance-of v2, v1, Lorg/jdom2/Element;

    if-eqz v2, :cond_2

    .line 312
    iget v2, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    move-object v0, v1

    :cond_1
    return-object v0

    .line 314
    :cond_2
    instance-of v2, v1, Lorg/jdom2/CDATA;

    if-eqz v2, :cond_4

    .line 315
    iget v2, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    move-object v0, v1

    :cond_3
    return-object v0

    .line 317
    :cond_4
    instance-of v2, v1, Lorg/jdom2/Text;

    if-eqz v2, :cond_6

    .line 318
    iget v2, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_5

    move-object v0, v1

    :cond_5
    return-object v0

    .line 320
    :cond_6
    instance-of v2, v1, Lorg/jdom2/Comment;

    if-eqz v2, :cond_8

    .line 321
    iget v2, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_7

    move-object v0, v1

    :cond_7
    return-object v0

    .line 323
    :cond_8
    instance-of v2, v1, Lorg/jdom2/ProcessingInstruction;

    if-eqz v2, :cond_a

    .line 324
    iget v2, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_9

    move-object v0, v1

    :cond_9
    return-object v0

    .line 326
    :cond_a
    instance-of v2, v1, Lorg/jdom2/EntityRef;

    if-eqz v2, :cond_c

    .line 327
    iget v2, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_b

    move-object v0, v1

    :cond_b
    return-object v0

    .line 332
    :cond_c
    instance-of v2, v1, Lorg/jdom2/DocType;

    if-eqz v2, :cond_e

    .line 333
    iget v2, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_d

    move-object v0, v1

    :cond_d
    return-object v0

    .line 336
    :cond_e
    return-object v0

    .line 306
    .end local v1    # "content":Lorg/jdom2/Content;
    :cond_f
    :goto_0
    return-object v0
.end method

.method public getFilterMask()I
    .locals 1

    .line 153
    iget v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 362
    iget v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    return v0
.end method

.method public setCDATAVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 213
    if-eqz p1, :cond_0

    .line 214
    iget v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    goto :goto_0

    .line 217
    :cond_0
    iget v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    .line 219
    :goto_0
    return-void
.end method

.method public setCommentVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 243
    if-eqz p1, :cond_0

    .line 244
    iget v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    goto :goto_0

    .line 247
    :cond_0
    iget v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    .line 249
    :goto_0
    return-void
.end method

.method public setDefaultMask()V
    .locals 1

    .line 170
    const/16 v0, 0xff

    iput v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    .line 172
    return-void
.end method

.method public setDocTypeVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 288
    if-eqz p1, :cond_0

    .line 289
    iget v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    goto :goto_0

    .line 292
    :cond_0
    iget v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    .line 294
    :goto_0
    return-void
.end method

.method public setDocumentContent()V
    .locals 1

    .line 179
    const/16 v0, 0x99

    iput v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    .line 180
    return-void
.end method

.method public setElementContent()V
    .locals 1

    .line 187
    const/16 v0, 0x3f

    iput v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    .line 189
    return-void
.end method

.method public setElementVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 198
    if-eqz p1, :cond_0

    .line 199
    iget v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    goto :goto_0

    .line 202
    :cond_0
    iget v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    .line 204
    :goto_0
    return-void
.end method

.method public setEntityRefVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 273
    if-eqz p1, :cond_0

    .line 274
    iget v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    goto :goto_0

    .line 277
    :cond_0
    iget v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    .line 279
    :goto_0
    return-void
.end method

.method public setFilterMask(I)V
    .locals 1
    .param p1, "mask"    # I

    .line 162
    invoke-virtual {p0}, Lorg/jdom2/filter/ContentFilter;->setDefaultMask()V

    .line 163
    iget v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    and-int/2addr v0, p1

    iput v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    .line 164
    return-void
.end method

.method public setPIVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 258
    if-eqz p1, :cond_0

    .line 259
    iget v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    goto :goto_0

    .line 262
    :cond_0
    iget v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    .line 264
    :goto_0
    return-void
.end method

.method public setTextVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 228
    if-eqz p1, :cond_0

    .line 229
    iget v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    goto :goto_0

    .line 232
    :cond_0
    iget v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/jdom2/filter/ContentFilter;->filterMask:I

    .line 234
    :goto_0
    return-void
.end method
