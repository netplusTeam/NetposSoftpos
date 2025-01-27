.class abstract Ljavassist/bytecode/CodeIterator$Branch;
.super Ljava/lang/Object;
.source "CodeIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/CodeIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Branch"
.end annotation


# instance fields
.field orgPos:I

.field pos:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "p"    # I

    .line 1324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljavassist/bytecode/CodeIterator$Branch;->orgPos:I

    iput p1, p0, Ljavassist/bytecode/CodeIterator$Branch;->pos:I

    return-void
.end method

.method static shiftOffset(IIIIZ)I
    .locals 1
    .param p0, "i"    # I
    .param p1, "offset"    # I
    .param p2, "where"    # I
    .param p3, "gapLength"    # I
    .param p4, "exclusive"    # Z

    .line 1332
    add-int v0, p0, p1

    .line 1333
    .local v0, "target":I
    if-ge p0, p2, :cond_1

    .line 1334
    if-lt p2, v0, :cond_0

    if-eqz p4, :cond_5

    if-ne p2, v0, :cond_5

    .line 1335
    :cond_0
    add-int/2addr p1, p3

    goto :goto_0

    .line 1337
    :cond_1
    if-ne p0, p2, :cond_3

    .line 1340
    if-ge v0, p2, :cond_2

    if-eqz p4, :cond_2

    .line 1341
    sub-int/2addr p1, p3

    goto :goto_0

    .line 1342
    :cond_2
    if-ge p2, v0, :cond_5

    if-nez p4, :cond_5

    .line 1343
    add-int/2addr p1, p3

    goto :goto_0

    .line 1346
    :cond_3
    if-lt v0, p2, :cond_4

    if-nez p4, :cond_5

    if-ne p2, v0, :cond_5

    .line 1347
    :cond_4
    sub-int/2addr p1, p3

    .line 1349
    :cond_5
    :goto_0
    return p1
.end method


# virtual methods
.method deltaSize()I
    .locals 1

    .line 1354
    const/4 v0, 0x0

    return v0
.end method

.method expanded()Z
    .locals 1

    .line 1352
    const/4 v0, 0x0

    return v0
.end method

.method gapChanged()I
    .locals 1

    .line 1353
    const/4 v0, 0x0

    return v0
.end method

.method shift(IIZ)V
    .locals 1
    .param p1, "where"    # I
    .param p2, "gapLength"    # I
    .param p3, "exclusive"    # Z

    .line 1326
    iget v0, p0, Ljavassist/bytecode/CodeIterator$Branch;->pos:I

    if-lt p1, v0, :cond_0

    if-ne p1, v0, :cond_1

    if-eqz p3, :cond_1

    .line 1327
    :cond_0
    add-int/2addr v0, p2

    iput v0, p0, Ljavassist/bytecode/CodeIterator$Branch;->pos:I

    .line 1328
    :cond_1
    return-void
.end method

.method abstract write(I[BI[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation
.end method
