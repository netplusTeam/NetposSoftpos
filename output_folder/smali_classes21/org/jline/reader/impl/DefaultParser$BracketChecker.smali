.class Lorg/jline/reader/impl/DefaultParser$BracketChecker;
.super Ljava/lang/Object;
.source "DefaultParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/reader/impl/DefaultParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BracketChecker"
.end annotation


# instance fields
.field private cursor:I

.field private missingOpeningBracket:I

.field private nested:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private nextClosingBracket:Ljava/lang/String;

.field private openBrackets:I

.field final synthetic this$0:Lorg/jline/reader/impl/DefaultParser;


# direct methods
.method public constructor <init>(Lorg/jline/reader/impl/DefaultParser;I)V
    .locals 0
    .param p2, "cursor"    # I

    .line 445
    iput-object p1, p0, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->this$0:Lorg/jline/reader/impl/DefaultParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    const/4 p1, -0x1

    iput p1, p0, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->missingOpeningBracket:I

    .line 440
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->nested:Ljava/util/List;

    .line 441
    const/4 p1, 0x0

    iput p1, p0, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->openBrackets:I

    .line 446
    iput p2, p0, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->cursor:I

    .line 447
    return-void
.end method

.method private bracketId([CLjava/lang/CharSequence;I)I
    .locals 3
    .param p1, "brackets"    # [C
    .param p2, "buffer"    # Ljava/lang/CharSequence;
    .param p3, "pos"    # I

    .line 509
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 510
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    aget-char v2, p1, v0

    if-ne v1, v2, :cond_0

    .line 511
    return v0

    .line 509
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 514
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public check(Ljava/lang/CharSequence;I)V
    .locals 4
    .param p1, "buffer"    # Ljava/lang/CharSequence;
    .param p2, "pos"    # I

    .line 450
    iget-object v0, p0, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->this$0:Lorg/jline/reader/impl/DefaultParser;

    invoke-static {v0}, Lorg/jline/reader/impl/DefaultParser;->access$000(Lorg/jline/reader/impl/DefaultParser;)[C

    move-result-object v0

    if-eqz v0, :cond_5

    if-gez p2, :cond_0

    goto/16 :goto_1

    .line 453
    :cond_0
    iget-object v0, p0, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->this$0:Lorg/jline/reader/impl/DefaultParser;

    invoke-static {v0}, Lorg/jline/reader/impl/DefaultParser;->access$000(Lorg/jline/reader/impl/DefaultParser;)[C

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->bracketId([CLjava/lang/CharSequence;I)I

    move-result v0

    .line 454
    .local v0, "bid":I
    if-ltz v0, :cond_1

    .line 455
    iget-object v1, p0, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->nested:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 457
    :cond_1
    iget-object v1, p0, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->this$0:Lorg/jline/reader/impl/DefaultParser;

    invoke-static {v1}, Lorg/jline/reader/impl/DefaultParser;->access$100(Lorg/jline/reader/impl/DefaultParser;)[C

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->bracketId([CLjava/lang/CharSequence;I)I

    move-result v0

    .line 458
    if-ltz v0, :cond_3

    .line 459
    iget-object v1, p0, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->nested:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->nested:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 460
    iget-object v1, p0, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->nested:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 462
    :cond_2
    iput v0, p0, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->missingOpeningBracket:I

    .line 466
    :cond_3
    :goto_0
    iget v1, p0, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->cursor:I

    if-le v1, p2, :cond_4

    .line 467
    iget-object v1, p0, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->nested:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->openBrackets:I

    .line 468
    iget-object v1, p0, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->nested:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 469
    iget-object v1, p0, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->this$0:Lorg/jline/reader/impl/DefaultParser;

    invoke-static {v1}, Lorg/jline/reader/impl/DefaultParser;->access$100(Lorg/jline/reader/impl/DefaultParser;)[C

    move-result-object v1

    iget-object v2, p0, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->nested:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->nextClosingBracket:Ljava/lang/String;

    .line 472
    :cond_4
    return-void

    .line 451
    .end local v0    # "bid":I
    :cond_5
    :goto_1
    return-void
.end method

.method public getMissingClosingBrackets()Ljava/lang/String;
    .locals 4

    .line 490
    invoke-virtual {p0}, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->isClosingBracketMissing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    const/4 v0, 0x0

    return-object v0

    .line 493
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 494
    .local v0, "out":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->nested:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    .line 495
    iget-object v2, p0, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->this$0:Lorg/jline/reader/impl/DefaultParser;

    invoke-static {v2}, Lorg/jline/reader/impl/DefaultParser;->access$100(Lorg/jline/reader/impl/DefaultParser;)[C

    move-result-object v2

    iget-object v3, p0, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->nested:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 494
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 497
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMissingOpeningBracket()Ljava/lang/String;
    .locals 2

    .line 479
    invoke-virtual {p0}, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->isOpeningBracketMissing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    const/4 v0, 0x0

    return-object v0

    .line 482
    :cond_0
    iget-object v0, p0, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->this$0:Lorg/jline/reader/impl/DefaultParser;

    invoke-static {v0}, Lorg/jline/reader/impl/DefaultParser;->access$000(Lorg/jline/reader/impl/DefaultParser;)[C

    move-result-object v0

    iget v1, p0, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->missingOpeningBracket:I

    aget-char v0, v0, v1

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextClosingBracket()Ljava/lang/String;
    .locals 2

    .line 505
    iget-object v0, p0, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->nested:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->nextClosingBracket:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getOpenBrackets()I
    .locals 1

    .line 501
    iget v0, p0, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->openBrackets:I

    return v0
.end method

.method public isClosingBracketMissing()Z
    .locals 1

    .line 486
    iget-object v0, p0, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->nested:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isOpeningBracketMissing()Z
    .locals 2

    .line 475
    iget v0, p0, Lorg/jline/reader/impl/DefaultParser$BracketChecker;->missingOpeningBracket:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
