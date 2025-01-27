.class public Lorg/jline/utils/Display;
.super Ljava/lang/Object;
.source "Display.java"


# instance fields
.field protected final canScroll:Z

.field private columns:I

.field private columns1:I

.field protected final cost:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jline/utils/InfoCmp$Capability;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final cursorDownIsNewLine:Z

.field protected cursorPos:I

.field protected delayLineWrap:Z

.field protected final delayedWrapAtEol:Z

.field protected final fullScreen:Z

.field protected oldLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jline/utils/AttributedString;",
            ">;"
        }
    .end annotation
.end field

.field protected reset:Z

.field protected rows:I

.field protected final terminal:Lorg/jline/terminal/Terminal;

.field protected final wrapAtEol:Z


# direct methods
.method public static synthetic $r8$lambda$a7iRFED5clcVEbPoYlBnas8Ka1Y(Lorg/jline/utils/Display;Lorg/jline/utils/InfoCmp$Capability;)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/utils/Display;->computeCost(Lorg/jline/utils/InfoCmp$Capability;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lorg/jline/terminal/Terminal;Z)V
    .locals 4
    .param p1, "terminal"    # Lorg/jline/terminal/Terminal;
    .param p2, "fullscreen"    # Z

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/utils/Display;->oldLines:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jline/utils/Display;->cost:Ljava/util/Map;

    .line 45
    iput-object p1, p0, Lorg/jline/utils/Display;->terminal:Lorg/jline/terminal/Terminal;

    .line 46
    iput-boolean p2, p0, Lorg/jline/utils/Display;->fullScreen:Z

    .line 48
    sget-object v0, Lorg/jline/utils/InfoCmp$Capability;->insert_line:Lorg/jline/utils/InfoCmp$Capability;

    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->parm_insert_line:Lorg/jline/utils/InfoCmp$Capability;

    invoke-virtual {p0, v0, v1}, Lorg/jline/utils/Display;->can(Lorg/jline/utils/InfoCmp$Capability;Lorg/jline/utils/InfoCmp$Capability;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/jline/utils/InfoCmp$Capability;->delete_line:Lorg/jline/utils/InfoCmp$Capability;

    sget-object v3, Lorg/jline/utils/InfoCmp$Capability;->parm_delete_line:Lorg/jline/utils/InfoCmp$Capability;

    .line 49
    invoke-virtual {p0, v0, v3}, Lorg/jline/utils/Display;->can(Lorg/jline/utils/InfoCmp$Capability;Lorg/jline/utils/InfoCmp$Capability;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lorg/jline/utils/Display;->canScroll:Z

    .line 50
    sget-object v0, Lorg/jline/utils/InfoCmp$Capability;->auto_right_margin:Lorg/jline/utils/InfoCmp$Capability;

    invoke-interface {p1, v0}, Lorg/jline/terminal/Terminal;->getBooleanCapability(Lorg/jline/utils/InfoCmp$Capability;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jline/utils/Display;->wrapAtEol:Z

    .line 51
    if-eqz v0, :cond_1

    sget-object v0, Lorg/jline/utils/InfoCmp$Capability;->eat_newline_glitch:Lorg/jline/utils/InfoCmp$Capability;

    .line 52
    invoke-interface {p1, v0}, Lorg/jline/terminal/Terminal;->getBooleanCapability(Lorg/jline/utils/InfoCmp$Capability;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lorg/jline/utils/Display;->delayedWrapAtEol:Z

    .line 53
    sget-object v0, Lorg/jline/utils/InfoCmp$Capability;->cursor_down:Lorg/jline/utils/InfoCmp$Capability;

    invoke-interface {p1, v0}, Lorg/jline/terminal/Terminal;->getStringCapability(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/jline/utils/Curses;->tputs(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jline/utils/Display;->cursorDownIsNewLine:Z

    .line 54
    return-void
.end method

.method private computeCost(Lorg/jline/utils/InfoCmp$Capability;)I
    .locals 4
    .param p1, "cap"    # Lorg/jline/utils/InfoCmp$Capability;

    .line 378
    iget-object v0, p0, Lorg/jline/utils/Display;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v0, p1}, Lorg/jline/terminal/Terminal;->getStringCapability(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/jline/utils/Curses;->tputs(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    const v1, 0x7fffffff

    :goto_0
    return v1
.end method

.method private cost(Lorg/jline/utils/InfoCmp$Capability;)I
    .locals 2
    .param p1, "cap"    # Lorg/jline/utils/InfoCmp$Capability;

    .line 374
    iget-object v0, p0, Lorg/jline/utils/Display;->cost:Ljava/util/Map;

    new-instance v1, Lorg/jline/utils/Display$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/jline/utils/Display$$ExternalSyntheticLambda1;-><init>(Lorg/jline/utils/Display;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static synthetic lambda$update$0(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedString;
    .locals 2
    .param p0, "s"    # Lorg/jline/utils/AttributedString;

    .line 123
    new-instance v0, Lorg/jline/utils/AttributedString;

    invoke-virtual {p0}, Lorg/jline/utils/AttributedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private static longestCommon(Ljava/util/List;Ljava/util/List;)[I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jline/utils/AttributedString;",
            ">;",
            "Ljava/util/List<",
            "Lorg/jline/utils/AttributedString;",
            ">;)[I"
        }
    .end annotation

    .line 383
    .local p0, "l1":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    .local p1, "l2":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    const/4 v0, 0x0

    .line 384
    .local v0, "start1":I
    const/4 v1, 0x0

    .line 385
    .local v1, "start2":I
    const/4 v2, 0x0

    .line 386
    .local v2, "max":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 387
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 388
    const/4 v5, 0x0

    .line 389
    .local v5, "x":I
    :cond_0
    add-int v6, v3, v5

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int v7, v4, v5

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 390
    add-int/lit8 v5, v5, 0x1

    .line 391
    add-int v6, v3, v5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    add-int v6, v4, v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-lt v6, v7, :cond_0

    .line 393
    :cond_1
    if-le v5, v2, :cond_2

    .line 394
    move v2, v5

    .line 395
    move v0, v3

    .line 396
    move v1, v4

    .line 387
    .end local v5    # "x":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 386
    .end local v4    # "j":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 400
    .end local v3    # "i":I
    :cond_4
    if-eqz v2, :cond_5

    const/4 v3, 0x3

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v4, 0x2

    aput v2, v3, v4

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    return-object v3
.end method


# virtual methods
.method protected can(Lorg/jline/utils/InfoCmp$Capability;Lorg/jline/utils/InfoCmp$Capability;)Z
    .locals 1
    .param p1, "single"    # Lorg/jline/utils/InfoCmp$Capability;
    .param p2, "multi"    # Lorg/jline/utils/InfoCmp$Capability;

    .line 353
    iget-object v0, p0, Lorg/jline/utils/Display;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v0, p1}, Lorg/jline/terminal/Terminal;->getStringCapability(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jline/utils/Display;->terminal:Lorg/jline/terminal/Terminal;

    .line 354
    invoke-interface {v0, p2}, Lorg/jline/terminal/Terminal;->getStringCapability(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 353
    :goto_1
    return v0
.end method

.method public clear()V
    .locals 1

    .line 88
    iget-boolean v0, p0, Lorg/jline/utils/Display;->fullScreen:Z

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jline/utils/Display;->reset:Z

    .line 91
    :cond_0
    return-void
.end method

.method public delayLineWrap()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lorg/jline/utils/Display;->delayLineWrap:Z

    return v0
.end method

.method protected deleteChars(I)Z
    .locals 2
    .param p1, "nb"    # I

    .line 349
    sget-object v0, Lorg/jline/utils/InfoCmp$Capability;->delete_character:Lorg/jline/utils/InfoCmp$Capability;

    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->parm_dch:Lorg/jline/utils/InfoCmp$Capability;

    invoke-virtual {p0, v0, v1, p1}, Lorg/jline/utils/Display;->perform(Lorg/jline/utils/InfoCmp$Capability;Lorg/jline/utils/InfoCmp$Capability;I)Z

    move-result v0

    return v0
.end method

.method protected deleteLines(I)Z
    .locals 2
    .param p1, "nb"    # I

    .line 337
    sget-object v0, Lorg/jline/utils/InfoCmp$Capability;->delete_line:Lorg/jline/utils/InfoCmp$Capability;

    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->parm_delete_line:Lorg/jline/utils/InfoCmp$Capability;

    invoke-virtual {p0, v0, v1, p1}, Lorg/jline/utils/Display;->perform(Lorg/jline/utils/InfoCmp$Capability;Lorg/jline/utils/InfoCmp$Capability;I)Z

    move-result v0

    return v0
.end method

.method protected insertChars(I)Z
    .locals 2
    .param p1, "nb"    # I

    .line 345
    sget-object v0, Lorg/jline/utils/InfoCmp$Capability;->insert_character:Lorg/jline/utils/InfoCmp$Capability;

    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->parm_ich:Lorg/jline/utils/InfoCmp$Capability;

    invoke-virtual {p0, v0, v1, p1}, Lorg/jline/utils/Display;->perform(Lorg/jline/utils/InfoCmp$Capability;Lorg/jline/utils/InfoCmp$Capability;I)Z

    move-result v0

    return v0
.end method

.method protected insertLines(I)Z
    .locals 2
    .param p1, "nb"    # I

    .line 341
    sget-object v0, Lorg/jline/utils/InfoCmp$Capability;->insert_line:Lorg/jline/utils/InfoCmp$Capability;

    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->parm_insert_line:Lorg/jline/utils/InfoCmp$Capability;

    invoke-virtual {p0, v0, v1, p1}, Lorg/jline/utils/Display;->perform(Lorg/jline/utils/InfoCmp$Capability;Lorg/jline/utils/InfoCmp$Capability;I)Z

    move-result v0

    return v0
.end method

.method protected moveVisualCursorTo(I)I
    .locals 11
    .param p1, "i1"    # I

    .line 436
    iget v0, p0, Lorg/jline/utils/Display;->cursorPos:I

    .line 437
    .local v0, "i0":I
    if-ne v0, p1, :cond_0

    return p1

    .line 438
    :cond_0
    iget v1, p0, Lorg/jline/utils/Display;->columns1:I

    .line 439
    .local v1, "width":I
    div-int v2, v0, v1

    .line 440
    .local v2, "l0":I
    rem-int v3, v0, v1

    .line 441
    .local v3, "c0":I
    div-int v4, p1, v1

    .line 442
    .local v4, "l1":I
    rem-int v5, p1, v1

    .line 443
    .local v5, "c1":I
    iget v6, p0, Lorg/jline/utils/Display;->columns:I

    const/4 v7, 0x0

    if-ne v3, v6, :cond_1

    .line 444
    iget-object v6, p0, Lorg/jline/utils/Display;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v8, Lorg/jline/utils/InfoCmp$Capability;->carriage_return:Lorg/jline/utils/InfoCmp$Capability;

    new-array v9, v7, [Ljava/lang/Object;

    invoke-interface {v6, v8, v9}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 445
    const/4 v3, 0x0

    .line 447
    :cond_1
    if-le v2, v4, :cond_2

    .line 448
    sget-object v6, Lorg/jline/utils/InfoCmp$Capability;->cursor_up:Lorg/jline/utils/InfoCmp$Capability;

    sget-object v8, Lorg/jline/utils/InfoCmp$Capability;->parm_up_cursor:Lorg/jline/utils/InfoCmp$Capability;

    sub-int v9, v2, v4

    invoke-virtual {p0, v6, v8, v9}, Lorg/jline/utils/Display;->perform(Lorg/jline/utils/InfoCmp$Capability;Lorg/jline/utils/InfoCmp$Capability;I)Z

    goto :goto_1

    .line 449
    :cond_2
    if-ge v2, v4, :cond_5

    .line 451
    iget-boolean v6, p0, Lorg/jline/utils/Display;->fullScreen:Z

    if-eqz v6, :cond_4

    .line 452
    iget-object v6, p0, Lorg/jline/utils/Display;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v8, Lorg/jline/utils/InfoCmp$Capability;->parm_down_cursor:Lorg/jline/utils/InfoCmp$Capability;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    sub-int v10, v4, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-interface {v6, v8, v9}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 453
    move v6, v2

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_3

    .line 454
    iget-object v8, p0, Lorg/jline/utils/Display;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v9, Lorg/jline/utils/InfoCmp$Capability;->cursor_down:Lorg/jline/utils/InfoCmp$Capability;

    new-array v10, v7, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 453
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 456
    .end local v6    # "i":I
    :cond_3
    iget-boolean v6, p0, Lorg/jline/utils/Display;->cursorDownIsNewLine:Z

    if-eqz v6, :cond_5

    .line 457
    const/4 v3, 0x0

    goto :goto_1

    .line 461
    :cond_4
    iget-object v6, p0, Lorg/jline/utils/Display;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v8, Lorg/jline/utils/InfoCmp$Capability;->carriage_return:Lorg/jline/utils/InfoCmp$Capability;

    new-array v9, v7, [Ljava/lang/Object;

    invoke-interface {v6, v8, v9}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 462
    const/16 v6, 0xa

    sub-int v8, v4, v2

    invoke-virtual {p0, v6, v8}, Lorg/jline/utils/Display;->rawPrint(CI)V

    .line 463
    const/4 v3, 0x0

    .line 466
    :cond_5
    :goto_1
    if-eqz v3, :cond_6

    if-nez v5, :cond_6

    .line 467
    iget-object v6, p0, Lorg/jline/utils/Display;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v8, Lorg/jline/utils/InfoCmp$Capability;->carriage_return:Lorg/jline/utils/InfoCmp$Capability;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v6, v8, v7}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    goto :goto_2

    .line 468
    :cond_6
    if-ge v3, v5, :cond_7

    .line 469
    sget-object v6, Lorg/jline/utils/InfoCmp$Capability;->cursor_right:Lorg/jline/utils/InfoCmp$Capability;

    sget-object v7, Lorg/jline/utils/InfoCmp$Capability;->parm_right_cursor:Lorg/jline/utils/InfoCmp$Capability;

    sub-int v8, v5, v3

    invoke-virtual {p0, v6, v7, v8}, Lorg/jline/utils/Display;->perform(Lorg/jline/utils/InfoCmp$Capability;Lorg/jline/utils/InfoCmp$Capability;I)Z

    goto :goto_2

    .line 470
    :cond_7
    if-le v3, v5, :cond_8

    .line 471
    sget-object v6, Lorg/jline/utils/InfoCmp$Capability;->cursor_left:Lorg/jline/utils/InfoCmp$Capability;

    sget-object v7, Lorg/jline/utils/InfoCmp$Capability;->parm_left_cursor:Lorg/jline/utils/InfoCmp$Capability;

    sub-int v8, v3, v5

    invoke-virtual {p0, v6, v7, v8}, Lorg/jline/utils/Display;->perform(Lorg/jline/utils/InfoCmp$Capability;Lorg/jline/utils/InfoCmp$Capability;I)Z

    .line 473
    :cond_8
    :goto_2
    iput p1, p0, Lorg/jline/utils/Display;->cursorPos:I

    .line 474
    return p1
.end method

.method protected moveVisualCursorTo(ILjava/util/List;)V
    .locals 6
    .param p1, "targetPos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/jline/utils/AttributedString;",
            ">;)V"
        }
    .end annotation

    .line 410
    .local p2, "newLines":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    iget v0, p0, Lorg/jline/utils/Display;->cursorPos:I

    if-eq v0, p1, :cond_4

    .line 411
    iget v0, p0, Lorg/jline/utils/Display;->columns1:I

    rem-int v0, p1, v0

    iget v1, p0, Lorg/jline/utils/Display;->columns:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 412
    .local v0, "atRight":Z
    :goto_0
    if-eqz v0, :cond_1

    move v2, v3

    :cond_1
    sub-int v1, p1, v2

    invoke-virtual {p0, v1}, Lorg/jline/utils/Display;->moveVisualCursorTo(I)I

    .line 413
    if-eqz v0, :cond_4

    .line 416
    iget v1, p0, Lorg/jline/utils/Display;->columns1:I

    div-int v1, p1, v1

    .line 417
    .local v1, "row":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    sget-object v2, Lorg/jline/utils/AttributedString;->EMPTY:Lorg/jline/utils/AttributedString;

    goto :goto_1

    .line 418
    :cond_2
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jline/utils/AttributedString;

    iget v4, p0, Lorg/jline/utils/Display;->columns:I

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v2, v5, v4}, Lorg/jline/utils/AttributedString;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v2

    :goto_1
    nop

    .line 419
    .local v2, "lastChar":Lorg/jline/utils/AttributedString;
    invoke-virtual {v2}, Lorg/jline/utils/AttributedString;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 420
    const/16 v4, 0x20

    invoke-virtual {p0, v4}, Lorg/jline/utils/Display;->rawPrint(I)V

    goto :goto_2

    .line 422
    :cond_3
    invoke-virtual {p0, v2}, Lorg/jline/utils/Display;->rawPrint(Lorg/jline/utils/AttributedString;)V

    .line 423
    :goto_2
    iget v4, p0, Lorg/jline/utils/Display;->cursorPos:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/jline/utils/Display;->cursorPos:I

    .line 426
    .end local v0    # "atRight":Z
    .end local v1    # "row":I
    .end local v2    # "lastChar":Lorg/jline/utils/AttributedString;
    :cond_4
    return-void
.end method

.method protected perform(Lorg/jline/utils/InfoCmp$Capability;Lorg/jline/utils/InfoCmp$Capability;I)Z
    .locals 7
    .param p1, "single"    # Lorg/jline/utils/InfoCmp$Capability;
    .param p2, "multi"    # Lorg/jline/utils/InfoCmp$Capability;
    .param p3, "nb"    # I

    .line 358
    iget-object v0, p0, Lorg/jline/utils/Display;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v0, p2}, Lorg/jline/terminal/Terminal;->getStringCapability(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 359
    .local v0, "hasMulti":Z
    :goto_0
    iget-object v3, p0, Lorg/jline/utils/Display;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v3, p1}, Lorg/jline/terminal/Terminal;->getStringCapability(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 360
    .local v3, "hasSingle":Z
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Lorg/jline/utils/Display;->cost(Lorg/jline/utils/InfoCmp$Capability;)I

    move-result v4

    mul-int/2addr v4, p3

    invoke-direct {p0, p2}, Lorg/jline/utils/Display;->cost(Lorg/jline/utils/InfoCmp$Capability;)I

    move-result v5

    if-le v4, v5, :cond_3

    .line 361
    :cond_2
    iget-object v4, p0, Lorg/jline/utils/Display;->terminal:Lorg/jline/terminal/Terminal;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-interface {v4, p2, v5}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 362
    return v2

    .line 363
    :cond_3
    if-eqz v3, :cond_5

    .line 364
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, p3, :cond_4

    .line 365
    iget-object v5, p0, Lorg/jline/utils/Display;->terminal:Lorg/jline/terminal/Terminal;

    new-array v6, v1, [Ljava/lang/Object;

    invoke-interface {v5, p1, v6}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 364
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 367
    .end local v4    # "i":I
    :cond_4
    return v2

    .line 369
    :cond_5
    return v1
.end method

.method rawPrint(CI)V
    .locals 1
    .param p1, "c"    # C
    .param p2, "num"    # I

    .line 478
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 479
    invoke-virtual {p0, p1}, Lorg/jline/utils/Display;->rawPrint(I)V

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 481
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method rawPrint(I)V
    .locals 1
    .param p1, "c"    # I

    .line 484
    iget-object v0, p0, Lorg/jline/utils/Display;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v0}, Lorg/jline/terminal/Terminal;->writer()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->write(I)V

    .line 485
    return-void
.end method

.method rawPrint(Lorg/jline/utils/AttributedString;)V
    .locals 1
    .param p1, "str"    # Lorg/jline/utils/AttributedString;

    .line 488
    iget-object v0, p0, Lorg/jline/utils/Display;->terminal:Lorg/jline/terminal/Terminal;

    invoke-virtual {p1, v0}, Lorg/jline/utils/AttributedString;->print(Lorg/jline/terminal/Terminal;)V

    .line 489
    return-void
.end method

.method public reset()V
    .locals 1

    .line 80
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/utils/Display;->oldLines:Ljava/util/List;

    .line 81
    return-void
.end method

.method public resize(II)V
    .locals 3
    .param p1, "rows"    # I
    .param p2, "columns"    # I

    .line 67
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 68
    :cond_0
    const p2, 0x7ffffffe

    .line 69
    const/4 p1, 0x1

    .line 71
    :cond_1
    iget v0, p0, Lorg/jline/utils/Display;->rows:I

    if-ne v0, p1, :cond_2

    iget v0, p0, Lorg/jline/utils/Display;->columns:I

    if-eq v0, p2, :cond_3

    .line 72
    :cond_2
    iput p1, p0, Lorg/jline/utils/Display;->rows:I

    .line 73
    iput p2, p0, Lorg/jline/utils/Display;->columns:I

    .line 74
    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lorg/jline/utils/Display;->columns1:I

    .line 75
    sget-object v0, Lorg/jline/utils/AttributedString;->EMPTY:Lorg/jline/utils/AttributedString;

    iget-object v1, p0, Lorg/jline/utils/Display;->oldLines:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/jline/utils/AttributedString;->join(Lorg/jline/utils/AttributedString;Ljava/lang/Iterable;)Lorg/jline/utils/AttributedString;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jline/utils/Display;->delayLineWrap()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, p2, v2, v1}, Lorg/jline/utils/AttributedString;->columnSplitLength(IZZ)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/utils/Display;->oldLines:Ljava/util/List;

    .line 77
    :cond_3
    return-void
.end method

.method public setDelayLineWrap(Z)V
    .locals 0
    .param p1, "v"    # Z

    .line 64
    iput-boolean p1, p0, Lorg/jline/utils/Display;->delayLineWrap:Z

    return-void
.end method

.method public update(Ljava/util/List;I)V
    .locals 1
    .param p2, "targetCursorPos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jline/utils/AttributedString;",
            ">;I)V"
        }
    .end annotation

    .line 103
    .local p1, "newLines":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/jline/utils/Display;->update(Ljava/util/List;IZ)V

    .line 104
    return-void
.end method

.method public update(Ljava/util/List;IZ)V
    .locals 30
    .param p2, "targetCursorPos"    # I
    .param p3, "flush"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jline/utils/AttributedString;",
            ">;IZ)V"
        }
    .end annotation

    .line 113
    .local p1, "newLines":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/jline/utils/Display;->reset:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, v0, Lorg/jline/utils/Display;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v3, Lorg/jline/utils/InfoCmp$Capability;->clear_screen:Lorg/jline/utils/InfoCmp$Capability;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 115
    iget-object v1, v0, Lorg/jline/utils/Display;->oldLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 116
    iput v2, v0, Lorg/jline/utils/Display;->cursorPos:I

    .line 117
    iput-boolean v2, v0, Lorg/jline/utils/Display;->reset:Z

    .line 121
    :cond_0
    iget-object v1, v0, Lorg/jline/utils/Display;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v3, Lorg/jline/utils/InfoCmp$Capability;->max_colors:Lorg/jline/utils/InfoCmp$Capability;

    invoke-interface {v1, v3}, Lorg/jline/terminal/Terminal;->getNumericCapability(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/Integer;

    move-result-object v1

    .line 122
    .local v1, "cols":Ljava/lang/Integer;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v3, p1

    goto :goto_1

    .line 123
    :cond_2
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/jline/utils/Display$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lorg/jline/utils/Display$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 124
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 128
    .end local p1    # "newLines":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    .local v3, "newLines":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    :goto_1
    iget-boolean v4, v0, Lorg/jline/utils/Display;->fullScreen:Z

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez v4, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    iget v7, v0, Lorg/jline/utils/Display;->rows:I

    if-lt v4, v7, :cond_3

    goto :goto_2

    :cond_3
    move-object/from16 v17, v1

    goto/16 :goto_a

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    iget-object v7, v0, Lorg/jline/utils/Display;->oldLines:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v4, v7, :cond_f

    iget-boolean v4, v0, Lorg/jline/utils/Display;->canScroll:Z

    if-eqz v4, :cond_f

    .line 129
    const/4 v4, 0x0

    .line 130
    .local v4, "nbHeaders":I
    const/4 v7, 0x0

    .line 132
    .local v7, "nbFooters":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    .line 133
    .local v8, "l":I
    :goto_3
    if-ge v4, v8, :cond_5

    .line 134
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    iget-object v10, v0, Lorg/jline/utils/Display;->oldLines:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 135
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 137
    :cond_5
    :goto_4
    sub-int v9, v8, v4

    sub-int/2addr v9, v6

    if-ge v7, v9, :cond_6

    .line 138
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v7

    sub-int/2addr v9, v6

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    iget-object v10, v0, Lorg/jline/utils/Display;->oldLines:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v7

    sub-int/2addr v11, v6

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 139
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 141
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v7

    invoke-interface {v3, v4, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v9

    .line 142
    .local v9, "o1":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    iget-object v10, v0, Lorg/jline/utils/Display;->oldLines:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v7

    invoke-interface {v10, v4, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v10

    .line 143
    .local v10, "o2":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    invoke-static {v9, v10}, Lorg/jline/utils/Display;->longestCommon(Ljava/util/List;Ljava/util/List;)[I

    move-result-object v11

    .line 144
    .local v11, "common":[I
    if-eqz v11, :cond_e

    .line 145
    aget v12, v11, v2

    .line 146
    .local v12, "s1":I
    aget v13, v11, v6

    .line 147
    .local v13, "s2":I
    aget v14, v11, v5

    .line 148
    .local v14, "sl":I
    const-string v15, ""

    if-le v14, v6, :cond_a

    if-ge v12, v13, :cond_a

    .line 149
    add-int v16, v4, v12

    iget v5, v0, Lorg/jline/utils/Display;->columns1:I

    mul-int v5, v5, v16

    invoke-virtual {v0, v5}, Lorg/jline/utils/Display;->moveVisualCursorTo(I)I

    .line 150
    sub-int v5, v13, v12

    .line 151
    .local v5, "nb":I
    invoke-virtual {v0, v5}, Lorg/jline/utils/Display;->deleteLines(I)Z

    .line 152
    const/16 v16, 0x0

    move/from16 v2, v16

    .local v2, "i":I
    :goto_5
    if-ge v2, v5, :cond_7

    .line 153
    iget-object v6, v0, Lorg/jline/utils/Display;->oldLines:Ljava/util/List;

    move-object/from16 v17, v1

    .end local v1    # "cols":Ljava/lang/Integer;
    .local v17, "cols":Ljava/lang/Integer;
    add-int v1, v4, v12

    invoke-interface {v6, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 152
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, v17

    const/4 v6, 0x1

    goto :goto_5

    .end local v17    # "cols":Ljava/lang/Integer;
    .restart local v1    # "cols":Ljava/lang/Integer;
    :cond_7
    move-object/from16 v17, v1

    .line 155
    .end local v1    # "cols":Ljava/lang/Integer;
    .end local v2    # "i":I
    .restart local v17    # "cols":Ljava/lang/Integer;
    if-lez v7, :cond_9

    .line 156
    add-int v1, v4, v12

    add-int/2addr v1, v14

    iget v2, v0, Lorg/jline/utils/Display;->columns1:I

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/jline/utils/Display;->moveVisualCursorTo(I)I

    .line 157
    invoke-virtual {v0, v5}, Lorg/jline/utils/Display;->insertLines(I)Z

    .line 158
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, v5, :cond_8

    .line 159
    iget-object v2, v0, Lorg/jline/utils/Display;->oldLines:Ljava/util/List;

    add-int v6, v4, v12

    add-int/2addr v6, v14

    move/from16 v18, v5

    .end local v5    # "nb":I
    .local v18, "nb":I
    new-instance v5, Lorg/jline/utils/AttributedString;

    invoke-direct {v5, v15}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v2, v6, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 158
    add-int/lit8 v1, v1, 0x1

    move/from16 v5, v18

    goto :goto_6

    .end local v18    # "nb":I
    .restart local v5    # "nb":I
    :cond_8
    move/from16 v18, v5

    .end local v5    # "nb":I
    .restart local v18    # "nb":I
    goto :goto_9

    .line 155
    .end local v1    # "i":I
    .end local v18    # "nb":I
    .restart local v5    # "nb":I
    :cond_9
    move/from16 v18, v5

    .end local v5    # "nb":I
    .restart local v18    # "nb":I
    goto :goto_9

    .line 148
    .end local v17    # "cols":Ljava/lang/Integer;
    .end local v18    # "nb":I
    .local v1, "cols":Ljava/lang/Integer;
    :cond_a
    move-object/from16 v17, v1

    .line 162
    .end local v1    # "cols":Ljava/lang/Integer;
    .restart local v17    # "cols":Ljava/lang/Integer;
    const/4 v1, 0x1

    if-le v14, v1, :cond_d

    if-le v12, v13, :cond_d

    .line 163
    sub-int v1, v12, v13

    .line 164
    .local v1, "nb":I
    if-lez v7, :cond_b

    .line 165
    add-int v2, v4, v13

    add-int/2addr v2, v14

    iget v5, v0, Lorg/jline/utils/Display;->columns1:I

    mul-int/2addr v2, v5

    invoke-virtual {v0, v2}, Lorg/jline/utils/Display;->moveVisualCursorTo(I)I

    .line 166
    invoke-virtual {v0, v1}, Lorg/jline/utils/Display;->deleteLines(I)Z

    .line 167
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_7
    if-ge v2, v1, :cond_b

    .line 168
    iget-object v5, v0, Lorg/jline/utils/Display;->oldLines:Ljava/util/List;

    add-int v6, v4, v13

    add-int/2addr v6, v14

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 171
    .end local v2    # "i":I
    :cond_b
    add-int v2, v4, v13

    iget v5, v0, Lorg/jline/utils/Display;->columns1:I

    mul-int/2addr v2, v5

    invoke-virtual {v0, v2}, Lorg/jline/utils/Display;->moveVisualCursorTo(I)I

    .line 172
    invoke-virtual {v0, v1}, Lorg/jline/utils/Display;->insertLines(I)Z

    .line 173
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_8
    if-ge v2, v1, :cond_c

    .line 174
    iget-object v5, v0, Lorg/jline/utils/Display;->oldLines:Ljava/util/List;

    add-int v6, v4, v13

    move/from16 v18, v1

    .end local v1    # "nb":I
    .restart local v18    # "nb":I
    new-instance v1, Lorg/jline/utils/AttributedString;

    invoke-direct {v1, v15}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v5, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 173
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v18

    goto :goto_8

    .end local v18    # "nb":I
    .restart local v1    # "nb":I
    :cond_c
    move/from16 v18, v1

    .end local v1    # "nb":I
    .restart local v18    # "nb":I
    goto :goto_a

    .line 162
    .end local v2    # "i":I
    .end local v18    # "nb":I
    :cond_d
    :goto_9
    goto :goto_a

    .line 144
    .end local v12    # "s1":I
    .end local v13    # "s2":I
    .end local v14    # "sl":I
    .end local v17    # "cols":Ljava/lang/Integer;
    .local v1, "cols":Ljava/lang/Integer;
    :cond_e
    move-object/from16 v17, v1

    .end local v1    # "cols":Ljava/lang/Integer;
    .restart local v17    # "cols":Ljava/lang/Integer;
    goto :goto_a

    .line 128
    .end local v4    # "nbHeaders":I
    .end local v7    # "nbFooters":I
    .end local v8    # "l":I
    .end local v9    # "o1":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    .end local v10    # "o2":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    .end local v11    # "common":[I
    .end local v17    # "cols":Ljava/lang/Integer;
    .restart local v1    # "cols":Ljava/lang/Integer;
    :cond_f
    move-object/from16 v17, v1

    .line 180
    .end local v1    # "cols":Ljava/lang/Integer;
    .restart local v17    # "cols":Ljava/lang/Integer;
    :goto_a
    const/4 v1, 0x0

    .line 181
    .local v1, "lineIndex":I
    const/4 v2, 0x0

    .line 182
    .local v2, "currentPos":I
    iget-object v4, v0, Lorg/jline/utils/Display;->oldLines:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 183
    .local v4, "numLines":I
    const/4 v5, 0x0

    move v6, v5

    move v5, v2

    move v2, v1

    move/from16 v1, p2

    .line 184
    .end local p2    # "targetCursorPos":I
    .local v1, "targetCursorPos":I
    .local v2, "lineIndex":I
    .local v5, "currentPos":I
    .local v6, "wrapNeeded":Z
    :goto_b
    if-ge v2, v4, :cond_30

    .line 186
    iget-object v7, v0, Lorg/jline/utils/Display;->oldLines:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_10

    iget-object v7, v0, Lorg/jline/utils/Display;->oldLines:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jline/utils/AttributedString;

    goto :goto_c

    .line 187
    :cond_10
    sget-object v7, Lorg/jline/utils/AttributedString;->NEWLINE:Lorg/jline/utils/AttributedString;

    :goto_c
    nop

    .line 189
    .local v7, "oldLine":Lorg/jline/utils/AttributedString;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_11

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jline/utils/AttributedString;

    goto :goto_d

    .line 190
    :cond_11
    sget-object v8, Lorg/jline/utils/AttributedString;->NEWLINE:Lorg/jline/utils/AttributedString;

    :goto_d
    nop

    .line 191
    .local v8, "newLine":Lorg/jline/utils/AttributedString;
    iget v9, v0, Lorg/jline/utils/Display;->columns1:I

    mul-int/2addr v9, v2

    .line 192
    .end local v5    # "currentPos":I
    .local v9, "currentPos":I
    move v5, v9

    .line 193
    .local v5, "curCol":I
    invoke-virtual {v7}, Lorg/jline/utils/AttributedString;->length()I

    move-result v10

    .line 194
    .local v10, "oldLength":I
    invoke-virtual {v8}, Lorg/jline/utils/AttributedString;->length()I

    move-result v11

    .line 195
    .local v11, "newLength":I
    const/16 v12, 0xa

    if-lez v10, :cond_12

    add-int/lit8 v13, v10, -0x1

    invoke-virtual {v7, v13}, Lorg/jline/utils/AttributedString;->charAt(I)C

    move-result v13

    if-ne v13, v12, :cond_12

    const/4 v13, 0x1

    goto :goto_e

    :cond_12
    const/4 v13, 0x0

    .line 196
    .local v13, "oldNL":Z
    :goto_e
    if-lez v11, :cond_13

    add-int/lit8 v14, v11, -0x1

    invoke-virtual {v8, v14}, Lorg/jline/utils/AttributedString;->charAt(I)C

    move-result v14

    if-ne v14, v12, :cond_13

    const/4 v12, 0x1

    goto :goto_f

    :cond_13
    const/4 v12, 0x0

    .line 197
    .local v12, "newNL":Z
    :goto_f
    if-eqz v13, :cond_14

    .line 198
    add-int/lit8 v10, v10, -0x1

    .line 199
    const/4 v14, 0x0

    invoke-virtual {v7, v14, v10}, Lorg/jline/utils/AttributedString;->substring(II)Lorg/jline/utils/AttributedString;

    move-result-object v7

    goto :goto_10

    .line 197
    :cond_14
    const/4 v14, 0x0

    .line 201
    :goto_10
    if-eqz v12, :cond_15

    .line 202
    add-int/lit8 v11, v11, -0x1

    .line 203
    invoke-virtual {v8, v14, v11}, Lorg/jline/utils/AttributedString;->substring(II)Lorg/jline/utils/AttributedString;

    move-result-object v8

    .line 205
    :cond_15
    const-string v14, " \u0008"

    if-eqz v6, :cond_1b

    iget v15, v0, Lorg/jline/utils/Display;->cursorPos:I

    move/from16 v18, v4

    const/4 v4, 0x1

    .end local v4    # "numLines":I
    .local v18, "numLines":I
    add-int/2addr v15, v4

    iget v4, v0, Lorg/jline/utils/Display;->columns1:I

    div-int/2addr v15, v4

    if-ne v2, v15, :cond_1a

    .line 207
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_19

    .line 209
    iget v4, v0, Lorg/jline/utils/Display;->cursorPos:I

    const/4 v15, 0x1

    add-int/2addr v4, v15

    iput v4, v0, Lorg/jline/utils/Display;->cursorPos:I

    .line 210
    if-eqz v11, :cond_18

    const/4 v4, 0x0

    invoke-virtual {v8, v4}, Lorg/jline/utils/AttributedString;->isHidden(I)Z

    move-result v16

    if-eqz v16, :cond_16

    move/from16 p2, v6

    goto :goto_11

    .line 214
    :cond_16
    move/from16 p2, v6

    .end local v6    # "wrapNeeded":Z
    .local p2, "wrapNeeded":Z
    invoke-virtual {v8, v4, v15}, Lorg/jline/utils/AttributedString;->substring(II)Lorg/jline/utils/AttributedString;

    move-result-object v6

    .line 216
    .local v6, "firstChar":Lorg/jline/utils/AttributedString;
    invoke-virtual {v0, v6}, Lorg/jline/utils/Display;->rawPrint(Lorg/jline/utils/AttributedString;)V

    .line 217
    iget v4, v0, Lorg/jline/utils/Display;->cursorPos:I

    invoke-virtual {v6}, Lorg/jline/utils/AttributedString;->columnLength()I

    move-result v16

    add-int v4, v4, v16

    iput v4, v0, Lorg/jline/utils/Display;->cursorPos:I

    .line 218
    invoke-virtual {v8, v15, v11}, Lorg/jline/utils/AttributedString;->substring(II)Lorg/jline/utils/AttributedString;

    move-result-object v8

    .line 219
    add-int/lit8 v11, v11, -0x1

    .line 220
    if-lez v10, :cond_17

    .line 221
    invoke-virtual {v7, v15, v10}, Lorg/jline/utils/AttributedString;->substring(II)Lorg/jline/utils/AttributedString;

    move-result-object v4

    .line 222
    .end local v7    # "oldLine":Lorg/jline/utils/AttributedString;
    .local v4, "oldLine":Lorg/jline/utils/AttributedString;
    add-int/lit8 v10, v10, -0x1

    move-object v7, v4

    .line 224
    .end local v4    # "oldLine":Lorg/jline/utils/AttributedString;
    .restart local v7    # "oldLine":Lorg/jline/utils/AttributedString;
    :cond_17
    iget v9, v0, Lorg/jline/utils/Display;->cursorPos:I

    goto :goto_12

    .line 210
    .end local p2    # "wrapNeeded":Z
    .local v6, "wrapNeeded":Z
    :cond_18
    move/from16 p2, v6

    .line 212
    .end local v6    # "wrapNeeded":Z
    .restart local p2    # "wrapNeeded":Z
    :goto_11
    new-instance v4, Lorg/jline/utils/AttributedString;

    invoke-direct {v4, v14}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Lorg/jline/utils/Display;->rawPrint(Lorg/jline/utils/AttributedString;)V

    goto :goto_12

    .line 207
    .end local p2    # "wrapNeeded":Z
    .restart local v6    # "wrapNeeded":Z
    :cond_19
    move/from16 p2, v6

    .end local v6    # "wrapNeeded":Z
    .restart local p2    # "wrapNeeded":Z
    goto :goto_12

    .line 205
    .end local p2    # "wrapNeeded":Z
    .restart local v6    # "wrapNeeded":Z
    :cond_1a
    move/from16 p2, v6

    .end local v6    # "wrapNeeded":Z
    .restart local p2    # "wrapNeeded":Z
    goto :goto_12

    .end local v18    # "numLines":I
    .end local p2    # "wrapNeeded":Z
    .local v4, "numLines":I
    .restart local v6    # "wrapNeeded":Z
    :cond_1b
    move/from16 v18, v4

    move/from16 p2, v6

    .line 227
    .end local v4    # "numLines":I
    .end local v6    # "wrapNeeded":Z
    .restart local v18    # "numLines":I
    .restart local p2    # "wrapNeeded":Z
    :goto_12
    invoke-static {v7, v8}, Lorg/jline/utils/DiffHelper;->diff(Lorg/jline/utils/AttributedString;Lorg/jline/utils/AttributedString;)Ljava/util/List;

    move-result-object v4

    .line 228
    .local v4, "diffs":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/DiffHelper$Diff;>;"
    const/4 v6, 0x1

    .line 229
    .local v6, "ident":Z
    const/4 v15, 0x0

    .line 230
    .local v15, "cleared":Z
    const/16 v19, 0x0

    move/from16 v29, v19

    move/from16 v19, v10

    move/from16 v10, v29

    .local v10, "i":I
    .local v19, "oldLength":I
    :goto_13
    move/from16 v20, v11

    .end local v11    # "newLength":I
    .local v20, "newLength":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_24

    .line 231
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/jline/utils/DiffHelper$Diff;

    .line 232
    .local v11, "diff":Lorg/jline/utils/DiffHelper$Diff;
    move-object/from16 v21, v14

    iget-object v14, v11, Lorg/jline/utils/DiffHelper$Diff;->text:Lorg/jline/utils/AttributedString;

    invoke-virtual {v14}, Lorg/jline/utils/AttributedString;->columnLength()I

    move-result v14

    .line 233
    .local v14, "width":I
    sget-object v22, Lorg/jline/utils/Display$1;->$SwitchMap$org$jline$utils$DiffHelper$Operation:[I

    move/from16 v23, v13

    .end local v13    # "oldNL":Z
    .local v23, "oldNL":Z
    iget-object v13, v11, Lorg/jline/utils/DiffHelper$Diff;->operation:Lorg/jline/utils/DiffHelper$Operation;

    invoke-virtual {v13}, Lorg/jline/utils/DiffHelper$Operation;->ordinal()I

    move-result v13

    aget v13, v22, v13

    packed-switch v13, :pswitch_data_0

    move/from16 v28, v5

    move-object/from16 v26, v7

    move-object/from16 v24, v8

    move/from16 v22, v15

    const/4 v7, 0x2

    .end local v5    # "curCol":I
    .end local v7    # "oldLine":Lorg/jline/utils/AttributedString;
    .end local v8    # "newLine":Lorg/jline/utils/AttributedString;
    .end local v15    # "cleared":Z
    .local v22, "cleared":Z
    .local v24, "newLine":Lorg/jline/utils/AttributedString;
    .local v26, "oldLine":Lorg/jline/utils/AttributedString;
    .local v28, "curCol":I
    goto/16 :goto_15

    .line 271
    .end local v22    # "cleared":Z
    .end local v24    # "newLine":Lorg/jline/utils/AttributedString;
    .end local v26    # "oldLine":Lorg/jline/utils/AttributedString;
    .end local v28    # "curCol":I
    .restart local v5    # "curCol":I
    .restart local v7    # "oldLine":Lorg/jline/utils/AttributedString;
    .restart local v8    # "newLine":Lorg/jline/utils/AttributedString;
    .restart local v15    # "cleared":Z
    :pswitch_0
    if-eqz v15, :cond_1c

    .line 272
    move/from16 v28, v5

    move-object/from16 v26, v7

    move-object/from16 v24, v8

    move/from16 v22, v15

    const/4 v7, 0x2

    goto/16 :goto_15

    .line 274
    :cond_1c
    sub-int v13, v9, v5

    move/from16 v22, v15

    .end local v15    # "cleared":Z
    .restart local v22    # "cleared":Z
    iget v15, v0, Lorg/jline/utils/Display;->columns:I

    if-lt v13, v15, :cond_1d

    .line 275
    move/from16 v28, v5

    move-object/from16 v26, v7

    move-object/from16 v24, v8

    const/4 v7, 0x2

    goto/16 :goto_15

    .line 277
    :cond_1d
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    const/4 v15, 0x2

    sub-int/2addr v13, v15

    if-gt v10, v13, :cond_1e

    add-int/lit8 v13, v10, 0x1

    .line 278
    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/jline/utils/DiffHelper$Diff;

    iget-object v13, v13, Lorg/jline/utils/DiffHelper$Diff;->operation:Lorg/jline/utils/DiffHelper$Operation;

    sget-object v15, Lorg/jline/utils/DiffHelper$Operation;->EQUAL:Lorg/jline/utils/DiffHelper$Operation;

    if-ne v13, v15, :cond_1e

    .line 279
    add-int/lit8 v13, v10, 0x1

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/jline/utils/DiffHelper$Diff;

    iget-object v13, v13, Lorg/jline/utils/DiffHelper$Diff;->text:Lorg/jline/utils/AttributedString;

    invoke-virtual {v13}, Lorg/jline/utils/AttributedString;->columnLength()I

    move-result v13

    add-int/2addr v13, v9

    iget v15, v0, Lorg/jline/utils/Display;->columns:I

    if-ge v13, v15, :cond_1e

    .line 280
    invoke-virtual {v0, v9}, Lorg/jline/utils/Display;->moveVisualCursorTo(I)I

    .line 281
    invoke-virtual {v0, v14}, Lorg/jline/utils/Display;->deleteChars(I)Z

    move-result v13

    if-eqz v13, :cond_1e

    .line 282
    move/from16 v28, v5

    move-object/from16 v26, v7

    move-object/from16 v24, v8

    const/4 v7, 0x2

    goto/16 :goto_15

    .line 286
    :cond_1e
    invoke-virtual {v7}, Lorg/jline/utils/AttributedString;->columnLength()I

    move-result v13

    .line 287
    .local v13, "oldLen":I
    invoke-virtual {v8}, Lorg/jline/utils/AttributedString;->columnLength()I

    move-result v15

    .line 288
    .local v15, "newLen":I
    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v24

    sub-int v25, v9, v5

    move-object/from16 v26, v7

    .end local v7    # "oldLine":Lorg/jline/utils/AttributedString;
    .restart local v26    # "oldLine":Lorg/jline/utils/AttributedString;
    sub-int v7, v24, v25

    .line 289
    .local v7, "nb":I
    invoke-virtual {v0, v9}, Lorg/jline/utils/Display;->moveVisualCursorTo(I)I

    .line 290
    move-object/from16 v24, v8

    .end local v8    # "newLine":Lorg/jline/utils/AttributedString;
    .restart local v24    # "newLine":Lorg/jline/utils/AttributedString;
    iget-object v8, v0, Lorg/jline/utils/Display;->terminal:Lorg/jline/terminal/Terminal;

    move/from16 v25, v13

    .end local v13    # "oldLen":I
    .local v25, "oldLen":I
    sget-object v13, Lorg/jline/utils/InfoCmp$Capability;->clr_eol:Lorg/jline/utils/InfoCmp$Capability;

    move/from16 v28, v5

    move/from16 v27, v15

    const/4 v15, 0x0

    .end local v5    # "curCol":I
    .end local v15    # "newLen":I
    .local v27, "newLen":I
    .restart local v28    # "curCol":I
    new-array v5, v15, [Ljava/lang/Object;

    invoke-interface {v8, v13, v5}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1f

    .line 291
    const/16 v5, 0x20

    invoke-virtual {v0, v5, v7}, Lorg/jline/utils/Display;->rawPrint(CI)V

    .line 292
    iget v5, v0, Lorg/jline/utils/Display;->cursorPos:I

    add-int/2addr v5, v7

    iput v5, v0, Lorg/jline/utils/Display;->cursorPos:I

    .line 294
    :cond_1f
    const/4 v5, 0x1

    .line 295
    .end local v22    # "cleared":Z
    .local v5, "cleared":Z
    const/4 v6, 0x0

    move v15, v5

    const/4 v7, 0x2

    goto/16 :goto_16

    .line 245
    .end local v24    # "newLine":Lorg/jline/utils/AttributedString;
    .end local v25    # "oldLen":I
    .end local v26    # "oldLine":Lorg/jline/utils/AttributedString;
    .end local v27    # "newLen":I
    .end local v28    # "curCol":I
    .local v5, "curCol":I
    .local v7, "oldLine":Lorg/jline/utils/AttributedString;
    .restart local v8    # "newLine":Lorg/jline/utils/AttributedString;
    .local v15, "cleared":Z
    :pswitch_1
    move/from16 v28, v5

    move-object/from16 v26, v7

    move-object/from16 v24, v8

    move/from16 v22, v15

    .end local v5    # "curCol":I
    .end local v7    # "oldLine":Lorg/jline/utils/AttributedString;
    .end local v8    # "newLine":Lorg/jline/utils/AttributedString;
    .end local v15    # "cleared":Z
    .restart local v22    # "cleared":Z
    .restart local v24    # "newLine":Lorg/jline/utils/AttributedString;
    .restart local v26    # "oldLine":Lorg/jline/utils/AttributedString;
    .restart local v28    # "curCol":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x2

    sub-int/2addr v5, v7

    if-gt v10, v5, :cond_21

    add-int/lit8 v5, v10, 0x1

    .line 246
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jline/utils/DiffHelper$Diff;

    iget-object v5, v5, Lorg/jline/utils/DiffHelper$Diff;->operation:Lorg/jline/utils/DiffHelper$Operation;

    sget-object v7, Lorg/jline/utils/DiffHelper$Operation;->EQUAL:Lorg/jline/utils/DiffHelper$Operation;

    if-ne v5, v7, :cond_21

    .line 247
    invoke-virtual {v0, v9}, Lorg/jline/utils/Display;->moveVisualCursorTo(I)I

    move-result v5

    iput v5, v0, Lorg/jline/utils/Display;->cursorPos:I

    .line 248
    invoke-virtual {v0, v14}, Lorg/jline/utils/Display;->insertChars(I)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 249
    iget-object v5, v11, Lorg/jline/utils/DiffHelper$Diff;->text:Lorg/jline/utils/AttributedString;

    invoke-virtual {v0, v5}, Lorg/jline/utils/Display;->rawPrint(Lorg/jline/utils/AttributedString;)V

    .line 250
    iget v5, v0, Lorg/jline/utils/Display;->cursorPos:I

    add-int/2addr v5, v14

    iput v5, v0, Lorg/jline/utils/Display;->cursorPos:I

    .line 251
    iget v5, v0, Lorg/jline/utils/Display;->cursorPos:I

    .line 252
    .end local v9    # "currentPos":I
    .local v5, "currentPos":I
    move v9, v5

    move/from16 v15, v22

    const/4 v7, 0x2

    goto/16 :goto_16

    .line 248
    .end local v5    # "currentPos":I
    .restart local v9    # "currentPos":I
    :cond_20
    const/4 v7, 0x2

    goto :goto_14

    .line 254
    :cond_21
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x2

    sub-int/2addr v5, v7

    if-gt v10, v5, :cond_22

    add-int/lit8 v5, v10, 0x1

    .line 255
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jline/utils/DiffHelper$Diff;

    iget-object v5, v5, Lorg/jline/utils/DiffHelper$Diff;->operation:Lorg/jline/utils/DiffHelper$Operation;

    sget-object v8, Lorg/jline/utils/DiffHelper$Operation;->DELETE:Lorg/jline/utils/DiffHelper$Operation;

    if-ne v5, v8, :cond_22

    add-int/lit8 v5, v10, 0x1

    .line 256
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jline/utils/DiffHelper$Diff;

    iget-object v5, v5, Lorg/jline/utils/DiffHelper$Diff;->text:Lorg/jline/utils/AttributedString;

    invoke-virtual {v5}, Lorg/jline/utils/AttributedString;->columnLength()I

    move-result v5

    if-ne v14, v5, :cond_22

    .line 257
    invoke-virtual {v0, v9}, Lorg/jline/utils/Display;->moveVisualCursorTo(I)I

    .line 258
    iget-object v5, v11, Lorg/jline/utils/DiffHelper$Diff;->text:Lorg/jline/utils/AttributedString;

    invoke-virtual {v0, v5}, Lorg/jline/utils/Display;->rawPrint(Lorg/jline/utils/AttributedString;)V

    .line 259
    iget v5, v0, Lorg/jline/utils/Display;->cursorPos:I

    add-int/2addr v5, v14

    iput v5, v0, Lorg/jline/utils/Display;->cursorPos:I

    .line 260
    iget v5, v0, Lorg/jline/utils/Display;->cursorPos:I

    .line 261
    .end local v9    # "currentPos":I
    .restart local v5    # "currentPos":I
    add-int/lit8 v10, v10, 0x1

    .line 262
    move v9, v5

    move/from16 v15, v22

    goto :goto_16

    .line 264
    .end local v5    # "currentPos":I
    .restart local v9    # "currentPos":I
    :cond_22
    :goto_14
    invoke-virtual {v0, v9}, Lorg/jline/utils/Display;->moveVisualCursorTo(I)I

    .line 265
    iget-object v5, v11, Lorg/jline/utils/DiffHelper$Diff;->text:Lorg/jline/utils/AttributedString;

    invoke-virtual {v0, v5}, Lorg/jline/utils/Display;->rawPrint(Lorg/jline/utils/AttributedString;)V

    .line 266
    iget v5, v0, Lorg/jline/utils/Display;->cursorPos:I

    add-int/2addr v5, v14

    iput v5, v0, Lorg/jline/utils/Display;->cursorPos:I

    .line 267
    iget v5, v0, Lorg/jline/utils/Display;->cursorPos:I

    .line 268
    .end local v9    # "currentPos":I
    .restart local v5    # "currentPos":I
    const/4 v6, 0x0

    .line 269
    move v9, v5

    move/from16 v15, v22

    goto :goto_16

    .line 235
    .end local v22    # "cleared":Z
    .end local v24    # "newLine":Lorg/jline/utils/AttributedString;
    .end local v26    # "oldLine":Lorg/jline/utils/AttributedString;
    .end local v28    # "curCol":I
    .local v5, "curCol":I
    .restart local v7    # "oldLine":Lorg/jline/utils/AttributedString;
    .restart local v8    # "newLine":Lorg/jline/utils/AttributedString;
    .restart local v9    # "currentPos":I
    .restart local v15    # "cleared":Z
    :pswitch_2
    move/from16 v28, v5

    move-object/from16 v26, v7

    move-object/from16 v24, v8

    move/from16 v22, v15

    const/4 v7, 0x2

    .end local v5    # "curCol":I
    .end local v7    # "oldLine":Lorg/jline/utils/AttributedString;
    .end local v8    # "newLine":Lorg/jline/utils/AttributedString;
    .end local v15    # "cleared":Z
    .restart local v22    # "cleared":Z
    .restart local v24    # "newLine":Lorg/jline/utils/AttributedString;
    .restart local v26    # "oldLine":Lorg/jline/utils/AttributedString;
    .restart local v28    # "curCol":I
    if-nez v6, :cond_23

    .line 236
    invoke-virtual {v0, v9}, Lorg/jline/utils/Display;->moveVisualCursorTo(I)I

    move-result v5

    iput v5, v0, Lorg/jline/utils/Display;->cursorPos:I

    .line 237
    iget-object v5, v11, Lorg/jline/utils/DiffHelper$Diff;->text:Lorg/jline/utils/AttributedString;

    invoke-virtual {v0, v5}, Lorg/jline/utils/Display;->rawPrint(Lorg/jline/utils/AttributedString;)V

    .line 238
    iget v5, v0, Lorg/jline/utils/Display;->cursorPos:I

    add-int/2addr v5, v14

    iput v5, v0, Lorg/jline/utils/Display;->cursorPos:I

    .line 239
    iget v5, v0, Lorg/jline/utils/Display;->cursorPos:I

    move v9, v5

    move/from16 v15, v22

    .end local v9    # "currentPos":I
    .local v5, "currentPos":I
    goto :goto_16

    .line 241
    .end local v5    # "currentPos":I
    .restart local v9    # "currentPos":I
    :cond_23
    add-int/2addr v9, v14

    .line 243
    move/from16 v15, v22

    goto :goto_16

    .line 230
    .end local v11    # "diff":Lorg/jline/utils/DiffHelper$Diff;
    .end local v14    # "width":I
    :goto_15
    move/from16 v15, v22

    .end local v22    # "cleared":Z
    .restart local v15    # "cleared":Z
    :goto_16
    const/4 v5, 0x1

    add-int/2addr v10, v5

    move/from16 v11, v20

    move-object/from16 v14, v21

    move/from16 v13, v23

    move-object/from16 v8, v24

    move-object/from16 v7, v26

    move/from16 v5, v28

    goto/16 :goto_13

    .end local v23    # "oldNL":Z
    .end local v24    # "newLine":Lorg/jline/utils/AttributedString;
    .end local v26    # "oldLine":Lorg/jline/utils/AttributedString;
    .end local v28    # "curCol":I
    .local v5, "curCol":I
    .restart local v7    # "oldLine":Lorg/jline/utils/AttributedString;
    .restart local v8    # "newLine":Lorg/jline/utils/AttributedString;
    .local v13, "oldNL":Z
    :cond_24
    move/from16 v28, v5

    move-object/from16 v26, v7

    move-object/from16 v24, v8

    move/from16 v23, v13

    move-object/from16 v21, v14

    move/from16 v22, v15

    const/4 v7, 0x2

    .line 299
    .end local v5    # "curCol":I
    .end local v7    # "oldLine":Lorg/jline/utils/AttributedString;
    .end local v8    # "newLine":Lorg/jline/utils/AttributedString;
    .end local v10    # "i":I
    .end local v13    # "oldNL":Z
    .end local v15    # "cleared":Z
    .restart local v22    # "cleared":Z
    .restart local v23    # "oldNL":Z
    .restart local v24    # "newLine":Lorg/jline/utils/AttributedString;
    .restart local v26    # "oldLine":Lorg/jline/utils/AttributedString;
    .restart local v28    # "curCol":I
    add-int/lit8 v2, v2, 0x1

    .line 300
    if-nez v12, :cond_25

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_25

    const/4 v5, 0x1

    goto :goto_17

    :cond_25
    const/4 v5, 0x0

    .line 301
    .local v5, "newWrap":Z
    :goto_17
    add-int/lit8 v8, v1, 0x1

    iget v10, v0, Lorg/jline/utils/Display;->columns1:I

    mul-int v11, v2, v10

    if-ne v8, v11, :cond_27

    if-nez v5, :cond_26

    iget-boolean v8, v0, Lorg/jline/utils/Display;->delayLineWrap:Z

    if-nez v8, :cond_27

    .line 303
    :cond_26
    add-int/lit8 v1, v1, 0x1

    .line 304
    :cond_27
    iget v8, v0, Lorg/jline/utils/Display;->cursorPos:I

    sub-int v8, v8, v28

    rem-int/2addr v8, v10

    iget v10, v0, Lorg/jline/utils/Display;->columns:I

    if-ne v8, v10, :cond_28

    const/4 v8, 0x1

    goto :goto_18

    :cond_28
    const/4 v8, 0x0

    .line 305
    .local v8, "atRight":Z
    :goto_18
    const/4 v10, 0x0

    .line 306
    .end local p2    # "wrapNeeded":Z
    .local v10, "wrapNeeded":Z
    iget-boolean v11, v0, Lorg/jline/utils/Display;->delayedWrapAtEol:Z

    if-eqz v11, :cond_2d

    .line 307
    if-nez v23, :cond_29

    iget-object v11, v0, Lorg/jline/utils/Display;->oldLines:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v2, v11, :cond_29

    const/4 v11, 0x1

    goto :goto_19

    :cond_29
    const/4 v11, 0x0

    .line 308
    .local v11, "oldWrap":Z
    :goto_19
    if-eq v5, v11, :cond_2c

    if-eqz v11, :cond_2a

    if-nez v22, :cond_2c

    .line 309
    :cond_2a
    iget v13, v0, Lorg/jline/utils/Display;->columns1:I

    mul-int/2addr v13, v2

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    invoke-virtual {v0, v13, v3}, Lorg/jline/utils/Display;->moveVisualCursorTo(ILjava/util/List;)V

    .line 310
    if-eqz v5, :cond_2b

    .line 311
    const/4 v10, 0x1

    goto :goto_1a

    .line 313
    :cond_2b
    iget-object v13, v0, Lorg/jline/utils/Display;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v14, Lorg/jline/utils/InfoCmp$Capability;->clr_eol:Lorg/jline/utils/InfoCmp$Capability;

    const/4 v15, 0x0

    new-array v7, v15, [Ljava/lang/Object;

    invoke-interface {v13, v14, v7}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 315
    .end local v11    # "oldWrap":Z
    :cond_2c
    :goto_1a
    move v5, v9

    move v6, v10

    const/4 v11, 0x1

    const/4 v14, 0x0

    goto :goto_1c

    :cond_2d
    if-eqz v8, :cond_2f

    .line 316
    iget-boolean v7, v0, Lorg/jline/utils/Display;->wrapAtEol:Z

    if-eqz v7, :cond_2e

    .line 317
    iget-object v7, v0, Lorg/jline/utils/Display;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v7}, Lorg/jline/terminal/Terminal;->writer()Ljava/io/PrintWriter;

    move-result-object v7

    move-object/from16 v11, v21

    invoke-virtual {v7, v11}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 318
    iget v7, v0, Lorg/jline/utils/Display;->cursorPos:I

    const/4 v11, 0x1

    add-int/2addr v7, v11

    iput v7, v0, Lorg/jline/utils/Display;->cursorPos:I

    move/from16 v7, v28

    const/4 v14, 0x0

    goto :goto_1b

    .line 320
    :cond_2e
    const/4 v11, 0x1

    iget-object v7, v0, Lorg/jline/utils/Display;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v13, Lorg/jline/utils/InfoCmp$Capability;->carriage_return:Lorg/jline/utils/InfoCmp$Capability;

    const/4 v14, 0x0

    new-array v15, v14, [Ljava/lang/Object;

    invoke-interface {v7, v13, v15}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 321
    move/from16 v7, v28

    .end local v28    # "curCol":I
    .local v7, "curCol":I
    iput v7, v0, Lorg/jline/utils/Display;->cursorPos:I

    .line 323
    :goto_1b
    iget v9, v0, Lorg/jline/utils/Display;->cursorPos:I

    move v5, v9

    move v6, v10

    goto :goto_1c

    .line 315
    .end local v7    # "curCol":I
    .restart local v28    # "curCol":I
    :cond_2f
    move/from16 v7, v28

    const/4 v11, 0x1

    const/4 v14, 0x0

    .end local v28    # "curCol":I
    .restart local v7    # "curCol":I
    move v5, v9

    move v6, v10

    .line 325
    .end local v4    # "diffs":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/DiffHelper$Diff;>;"
    .end local v7    # "curCol":I
    .end local v8    # "atRight":Z
    .end local v9    # "currentPos":I
    .end local v10    # "wrapNeeded":Z
    .end local v12    # "newNL":Z
    .end local v19    # "oldLength":I
    .end local v20    # "newLength":I
    .end local v22    # "cleared":Z
    .end local v23    # "oldNL":Z
    .end local v24    # "newLine":Lorg/jline/utils/AttributedString;
    .end local v26    # "oldLine":Lorg/jline/utils/AttributedString;
    .local v5, "currentPos":I
    .local v6, "wrapNeeded":Z
    :goto_1c
    move/from16 v4, v18

    goto/16 :goto_b

    .line 326
    .end local v18    # "numLines":I
    .local v4, "numLines":I
    :cond_30
    move/from16 v18, v4

    move/from16 p2, v6

    .end local v4    # "numLines":I
    .end local v6    # "wrapNeeded":Z
    .restart local v18    # "numLines":I
    .restart local p2    # "wrapNeeded":Z
    iget v4, v0, Lorg/jline/utils/Display;->cursorPos:I

    if-eq v4, v1, :cond_32

    .line 327
    if-gez v1, :cond_31

    move v4, v5

    goto :goto_1d

    :cond_31
    move v4, v1

    :goto_1d
    invoke-virtual {v0, v4, v3}, Lorg/jline/utils/Display;->moveVisualCursorTo(ILjava/util/List;)V

    .line 329
    :cond_32
    iput-object v3, v0, Lorg/jline/utils/Display;->oldLines:Ljava/util/List;

    .line 331
    if-eqz p3, :cond_33

    .line 332
    iget-object v4, v0, Lorg/jline/utils/Display;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v4}, Lorg/jline/terminal/Terminal;->flush()V

    .line 334
    :cond_33
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateAnsi(Ljava/util/List;I)V
    .locals 2
    .param p2, "targetCursorPos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 94
    .local p1, "newLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/jline/utils/Display$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/jline/utils/Display$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0, p2}, Lorg/jline/utils/Display;->update(Ljava/util/List;I)V

    .line 95
    return-void
.end method

.method public wcwidth(Ljava/lang/String;)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 492
    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/jline/utils/AttributedString;->fromAnsi(Ljava/lang/String;)Lorg/jline/utils/AttributedString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jline/utils/AttributedString;->columnLength()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
