.class public final Landroidx/room/util/TableInfo$Column;
.super Ljava/lang/Object;
.source "TableInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/util/TableInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Column"
.end annotation


# instance fields
.field public final affinity:I

.field public final defaultValue:Ljava/lang/String;

.field private final mCreatedFrom:I

.field public final name:Ljava/lang/String;

.field public final notNull:Z

.field public final primaryKeyPosition:I

.field public final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "notNull"    # Z
    .param p4, "primaryKeyPosition"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 400
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 401
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "notNull"    # Z
    .param p4, "primaryKeyPosition"    # I
    .param p5, "defaultValue"    # Ljava/lang/String;
    .param p6, "createdFrom"    # I

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    iput-object p1, p0, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    .line 407
    iput-object p2, p0, Landroidx/room/util/TableInfo$Column;->type:Ljava/lang/String;

    .line 408
    iput-boolean p3, p0, Landroidx/room/util/TableInfo$Column;->notNull:Z

    .line 409
    iput p4, p0, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    .line 410
    invoke-static {p2}, Landroidx/room/util/TableInfo$Column;->findAffinity(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/room/util/TableInfo$Column;->affinity:I

    .line 411
    iput-object p5, p0, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    .line 412
    iput p6, p0, Landroidx/room/util/TableInfo$Column;->mCreatedFrom:I

    .line 413
    return-void
.end method

.method private static containsSurroundingParenthesis(Ljava/lang/String;)Z
    .locals 6
    .param p0, "actual"    # Ljava/lang/String;

    .line 515
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 516
    return v1

    .line 518
    :cond_0
    const/4 v0, 0x0

    .line 519
    .local v0, "surroundingParenthesis":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_4

    .line 520
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 521
    .local v3, "c":C
    const/16 v5, 0x28

    if-nez v2, :cond_1

    if-eq v3, v5, :cond_1

    .line 522
    return v1

    .line 525
    :cond_1
    if-ne v3, v5, :cond_2

    .line 526
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 527
    :cond_2
    const/16 v5, 0x29

    if-ne v3, v5, :cond_3

    .line 528
    add-int/lit8 v0, v0, -0x1

    .line 529
    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    if-eq v2, v5, :cond_3

    .line 530
    return v1

    .line 519
    .end local v3    # "c":C
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 534
    .end local v2    # "i":I
    :cond_4
    if-nez v0, :cond_5

    move v1, v4

    :cond_5
    return v1
.end method

.method public static defaultValueEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "actual"    # Ljava/lang/String;
    .param p1, "other"    # Ljava/lang/String;

    .line 497
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 498
    return v0

    .line 501
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 502
    return v2

    .line 503
    :cond_1
    invoke-static {p0}, Landroidx/room/util/TableInfo$Column;->containsSurroundingParenthesis(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 504
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 506
    :cond_2
    return v0
.end method

.method private static findAffinity(Ljava/lang/String;)I
    .locals 3
    .param p0, "type"    # Ljava/lang/String;

    .line 423
    const/4 v0, 0x5

    if-nez p0, :cond_0

    .line 424
    return v0

    .line 426
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 427
    .local v1, "uppercaseType":Ljava/lang/String;
    const-string v2, "INT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 428
    const/4 v0, 0x3

    return v0

    .line 430
    :cond_1
    const-string v2, "CHAR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 431
    const-string v2, "CLOB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 432
    const-string v2, "TEXT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 435
    :cond_2
    const-string v2, "BLOB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 436
    return v0

    .line 438
    :cond_3
    const-string v0, "REAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 439
    const-string v0, "FLOA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 440
    const-string v0, "DOUB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 445
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 441
    :cond_5
    :goto_0
    const/4 v0, 0x4

    return v0

    .line 433
    :cond_6
    :goto_1
    const/4 v0, 0x2

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 450
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 451
    :cond_0
    instance-of v1, p1, Landroidx/room/util/TableInfo$Column;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 453
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/room/util/TableInfo$Column;

    .line 454
    .local v1, "column":Landroidx/room/util/TableInfo$Column;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x14

    if-lt v3, v4, :cond_2

    .line 455
    iget v3, p0, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    iget v4, v1, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    if-eq v3, v4, :cond_3

    return v2

    .line 457
    :cond_2
    invoke-virtual {p0}, Landroidx/room/util/TableInfo$Column;->isPrimaryKey()Z

    move-result v3

    invoke-virtual {v1}, Landroidx/room/util/TableInfo$Column;->isPrimaryKey()Z

    move-result v4

    if-eq v3, v4, :cond_3

    return v2

    .line 460
    :cond_3
    iget-object v3, p0, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    iget-object v4, v1, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    .line 462
    :cond_4
    iget-boolean v3, p0, Landroidx/room/util/TableInfo$Column;->notNull:Z

    iget-boolean v4, v1, Landroidx/room/util/TableInfo$Column;->notNull:Z

    if-eq v3, v4, :cond_5

    return v2

    .line 466
    :cond_5
    iget v3, p0, Landroidx/room/util/TableInfo$Column;->mCreatedFrom:I

    const/4 v4, 0x2

    if-ne v3, v0, :cond_6

    iget v3, v1, Landroidx/room/util/TableInfo$Column;->mCreatedFrom:I

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v5, v1, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    .line 468
    invoke-static {v3, v5}, Landroidx/room/util/TableInfo$Column;->defaultValueEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 470
    return v2

    .line 471
    :cond_6
    iget v3, p0, Landroidx/room/util/TableInfo$Column;->mCreatedFrom:I

    if-ne v3, v4, :cond_7

    iget v3, v1, Landroidx/room/util/TableInfo$Column;->mCreatedFrom:I

    if-ne v3, v0, :cond_7

    iget-object v3, v1, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v4, p0, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    .line 473
    invoke-static {v3, v4}, Landroidx/room/util/TableInfo$Column;->defaultValueEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 475
    return v2

    .line 476
    :cond_7
    iget v3, p0, Landroidx/room/util/TableInfo$Column;->mCreatedFrom:I

    if-eqz v3, :cond_9

    iget v4, v1, Landroidx/room/util/TableInfo$Column;->mCreatedFrom:I

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v4, v1, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    .line 478
    invoke-static {v3, v4}, Landroidx/room/util/TableInfo$Column;->defaultValueEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_0

    :cond_8
    iget-object v3, v1, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 481
    :goto_0
    return v2

    .line 484
    :cond_9
    iget v3, p0, Landroidx/room/util/TableInfo$Column;->affinity:I

    iget v4, v1, Landroidx/room/util/TableInfo$Column;->affinity:I

    if-ne v3, v4, :cond_a

    goto :goto_1

    :cond_a
    move v0, v2

    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 548
    iget-object v0, p0, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 549
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/room/util/TableInfo$Column;->affinity:I

    add-int/2addr v1, v2

    .line 550
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroidx/room/util/TableInfo$Column;->notNull:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v2, 0x4d5

    :goto_0
    add-int/2addr v0, v2

    .line 551
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    add-int/2addr v1, v2

    .line 555
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public isPrimaryKey()Z
    .locals 1

    .line 543
    iget v0, p0, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Column{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/room/util/TableInfo$Column;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", affinity=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroidx/room/util/TableInfo$Column;->affinity:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", notNull="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroidx/room/util/TableInfo$Column;->notNull:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", primaryKeyPosition="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", defaultValue=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
