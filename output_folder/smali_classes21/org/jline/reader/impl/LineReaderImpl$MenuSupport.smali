.class Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;
.super Ljava/lang/Object;
.source "LineReaderImpl.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/reader/impl/LineReaderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuSupport"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Lorg/jline/utils/AttributedString;",
        ">;"
    }
.end annotation


# instance fields
.field columns:I

.field completed:Ljava/lang/String;

.field computed:Lorg/jline/utils/AttributedString;

.field final escaper:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field lines:I

.field final possible:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jline/reader/Candidate;",
            ">;"
        }
    .end annotation
.end field

.field selection:I

.field final synthetic this$0:Lorg/jline/reader/impl/LineReaderImpl;

.field topLine:I

.field word:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jline/reader/impl/LineReaderImpl;Ljava/util/List;Ljava/lang/String;Ljava/util/function/BiFunction;)V
    .locals 2
    .param p3, "completed"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jline/reader/Candidate;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 4675
    .local p2, "original":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    .local p4, "escaper":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/CharSequence;Ljava/lang/Boolean;Ljava/lang/CharSequence;>;"
    iput-object p1, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->this$0:Lorg/jline/reader/impl/LineReaderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4676
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->possible:Ljava/util/List;

    .line 4677
    iput-object p4, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->escaper:Ljava/util/function/BiFunction;

    .line 4678
    const/4 v1, -0x1

    iput v1, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->selection:I

    .line 4679
    const/4 v1, 0x0

    iput v1, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->topLine:I

    .line 4680
    const-string v1, ""

    iput-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->word:Ljava/lang/String;

    .line 4681
    iput-object p3, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->completed:Ljava/lang/String;

    .line 4682
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0, p3}, Lorg/jline/reader/impl/LineReaderImpl;->computePost(Ljava/util/List;Lorg/jline/reader/Candidate;Ljava/util/List;Ljava/lang/String;)Lorg/jline/reader/impl/LineReaderImpl$PostResult;

    .line 4683
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->next()V

    .line 4684
    return-void
.end method

.method private major(I)V
    .locals 5
    .param p1, "step"    # I

    .line 4708
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->this$0:Lorg/jline/reader/impl/LineReaderImpl;

    sget-object v1, Lorg/jline/reader/LineReader$Option;->LIST_ROWS_FIRST:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {v0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->columns:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->lines:I

    .line 4709
    .local v0, "axis":I
    :goto_0
    iget v1, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->selection:I

    mul-int v2, p1, v0

    add-int/2addr v1, v2

    .line 4710
    .local v1, "sel":I
    if-gez v1, :cond_2

    .line 4711
    add-int v2, v1, v0

    rem-int/2addr v2, v0

    .line 4712
    .local v2, "pos":I
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->possible:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int/2addr v3, v0

    .line 4713
    .local v3, "remainders":I
    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->possible:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    add-int/2addr v4, v2

    .line 4714
    .end local v1    # "sel":I
    .local v4, "sel":I
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->possible:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v4, v1, :cond_1

    .line 4715
    sub-int/2addr v4, v0

    move v1, v4

    goto :goto_1

    .line 4714
    :cond_1
    move v1, v4

    goto :goto_1

    .line 4717
    .end local v2    # "pos":I
    .end local v3    # "remainders":I
    .end local v4    # "sel":I
    .restart local v1    # "sel":I
    :cond_2
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->possible:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 4718
    rem-int/2addr v1, v0

    goto :goto_2

    .line 4717
    :cond_3
    :goto_1
    nop

    .line 4720
    :goto_2
    iput v1, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->selection:I

    .line 4721
    invoke-direct {p0}, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->update()V

    .line 4722
    return-void
.end method

.method private minor(I)V
    .locals 5
    .param p1, "step"    # I

    .line 4732
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->this$0:Lorg/jline/reader/impl/LineReaderImpl;

    sget-object v1, Lorg/jline/reader/LineReader$Option;->LIST_ROWS_FIRST:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {v0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->columns:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->lines:I

    .line 4733
    .local v0, "axis":I
    :goto_0
    iget v1, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->selection:I

    rem-int/2addr v1, v0

    .line 4734
    .local v1, "row":I
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->possible:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 4735
    .local v2, "options":I
    iget v3, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->selection:I

    sub-int v4, v3, v1

    add-int/2addr v4, v0

    if-le v4, v2, :cond_1

    .line 4738
    rem-int v0, v2, v0

    .line 4740
    :cond_1
    sub-int/2addr v3, v1

    add-int v4, v0, v1

    add-int/2addr v4, p1

    rem-int/2addr v4, v0

    add-int/2addr v3, v4

    iput v3, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->selection:I

    .line 4741
    invoke-direct {p0}, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->update()V

    .line 4742
    return-void
.end method

.method private update()V
    .locals 11

    .line 4777
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->this$0:Lorg/jline/reader/impl/LineReaderImpl;

    iget-object v0, v0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->word:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->backspace(I)I

    .line 4778
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->escaper:Ljava/util/function/BiFunction;

    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->completion()Lorg/jline/reader/Candidate;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jline/reader/Candidate;->value()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->word:Ljava/lang/String;

    .line 4779
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->this$0:Lorg/jline/reader/impl/LineReaderImpl;

    iget-object v0, v0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->word:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->write(Ljava/lang/CharSequence;)V

    .line 4782
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->this$0:Lorg/jline/reader/impl/LineReaderImpl;

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->possible:Ljava/util/List;

    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->completion()Lorg/jline/reader/Candidate;

    move-result-object v3

    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->completed:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v5, v4}, Lorg/jline/reader/impl/LineReaderImpl;->computePost(Ljava/util/List;Lorg/jline/reader/Candidate;Ljava/util/List;Ljava/lang/String;)Lorg/jline/reader/impl/LineReaderImpl$PostResult;

    move-result-object v0

    .line 4783
    .local v0, "pr":Lorg/jline/reader/impl/LineReaderImpl$PostResult;
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->this$0:Lorg/jline/reader/impl/LineReaderImpl;

    invoke-static {v1}, Lorg/jline/reader/impl/LineReaderImpl;->access$000(Lorg/jline/reader/impl/LineReaderImpl;)I

    move-result v1

    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->this$0:Lorg/jline/reader/impl/LineReaderImpl;

    invoke-static {v3}, Lorg/jline/reader/impl/LineReaderImpl;->access$100(Lorg/jline/reader/impl/LineReaderImpl;)I

    move-result v3

    sub-int/2addr v1, v3

    .line 4784
    .local v1, "displaySize":I
    iget v3, v0, Lorg/jline/reader/impl/LineReaderImpl$PostResult;->lines:I

    if-le v3, v1, :cond_3

    .line 4785
    add-int/lit8 v3, v1, -0x1

    .line 4786
    .local v3, "displayed":I
    iget v4, v0, Lorg/jline/reader/impl/LineReaderImpl$PostResult;->selectedLine:I

    if-ltz v4, :cond_1

    .line 4787
    iget v4, v0, Lorg/jline/reader/impl/LineReaderImpl$PostResult;->selectedLine:I

    iget v5, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->topLine:I

    if-ge v4, v5, :cond_0

    .line 4788
    iget v4, v0, Lorg/jline/reader/impl/LineReaderImpl$PostResult;->selectedLine:I

    iput v4, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->topLine:I

    goto :goto_0

    .line 4789
    :cond_0
    iget v4, v0, Lorg/jline/reader/impl/LineReaderImpl$PostResult;->selectedLine:I

    iget v5, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->topLine:I

    add-int/2addr v5, v3

    if-lt v4, v5, :cond_1

    .line 4790
    iget v4, v0, Lorg/jline/reader/impl/LineReaderImpl$PostResult;->selectedLine:I

    sub-int/2addr v4, v3

    add-int/2addr v4, v2

    iput v4, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->topLine:I

    .line 4793
    :cond_1
    :goto_0
    iget-object v4, v0, Lorg/jline/reader/impl/LineReaderImpl$PostResult;->post:Lorg/jline/utils/AttributedString;

    .line 4794
    .local v4, "post":Lorg/jline/utils/AttributedString;
    invoke-virtual {v4}, Lorg/jline/utils/AttributedString;->length()I

    move-result v5

    const-string v6, "\n"

    if-lez v5, :cond_2

    invoke-virtual {v4}, Lorg/jline/utils/AttributedString;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v4, v5}, Lorg/jline/utils/AttributedString;->charAt(I)C

    move-result v5

    const/16 v7, 0xa

    if-eq v5, v7, :cond_2

    .line 4795
    new-instance v5, Lorg/jline/utils/AttributedStringBuilder;

    invoke-virtual {v4}, Lorg/jline/utils/AttributedString;->length()I

    move-result v7

    add-int/2addr v7, v2

    invoke-direct {v5, v7}, Lorg/jline/utils/AttributedStringBuilder;-><init>(I)V

    .line 4796
    invoke-virtual {v5, v4}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v4

    .line 4798
    :cond_2
    iget-object v5, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->this$0:Lorg/jline/reader/impl/LineReaderImpl;

    iget-object v5, v5, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v5}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v5

    iget-object v7, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->this$0:Lorg/jline/reader/impl/LineReaderImpl;

    iget-object v7, v7, Lorg/jline/reader/impl/LineReaderImpl;->display:Lorg/jline/utils/Display;

    invoke-virtual {v7}, Lorg/jline/utils/Display;->delayLineWrap()Z

    move-result v7

    invoke-virtual {v4, v5, v2, v7}, Lorg/jline/utils/AttributedString;->columnSplitLength(IZZ)Ljava/util/List;

    move-result-object v5

    .line 4799
    .local v5, "lines":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    new-instance v7, Ljava/util/ArrayList;

    iget v8, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->topLine:I

    add-int v9, v8, v3

    invoke-interface {v5, v8, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4800
    .local v7, "sub":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    new-instance v8, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v8}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    sget-object v9, Lorg/jline/utils/AttributedStyle;->DEFAULT:Lorg/jline/utils/AttributedStyle;

    const/4 v10, 0x6

    .line 4801
    invoke-virtual {v9, v10}, Lorg/jline/utils/AttributedStyle;->foreground(I)Lorg/jline/utils/AttributedStyle;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v8

    .line 4802
    const-string v9, "rows "

    invoke-virtual {v8, v9}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v8

    iget v9, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->topLine:I

    add-int/2addr v9, v2

    .line 4803
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v8

    .line 4804
    const-string v9, " to "

    invoke-virtual {v8, v9}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v8

    iget v9, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->topLine:I

    add-int/2addr v9, v3

    .line 4805
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v8

    .line 4806
    const-string v9, " of "

    invoke-virtual {v8, v9}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v8

    .line 4807
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v8

    .line 4808
    invoke-virtual {v8, v6}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v6

    sget-object v8, Lorg/jline/utils/AttributedStyle;->DEFAULT:Lorg/jline/utils/AttributedStyle;

    .line 4809
    invoke-virtual {v6, v8}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v6

    .line 4800
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4810
    sget-object v6, Lorg/jline/utils/AttributedString;->EMPTY:Lorg/jline/utils/AttributedString;

    invoke-static {v6, v7}, Lorg/jline/utils/AttributedString;->join(Lorg/jline/utils/AttributedString;Ljava/lang/Iterable;)Lorg/jline/utils/AttributedString;

    move-result-object v6

    iput-object v6, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->computed:Lorg/jline/utils/AttributedString;

    .line 4811
    .end local v3    # "displayed":I
    .end local v4    # "post":Lorg/jline/utils/AttributedString;
    .end local v5    # "lines":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    .end local v7    # "sub":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    goto :goto_1

    .line 4812
    :cond_3
    iget-object v3, v0, Lorg/jline/reader/impl/LineReaderImpl$PostResult;->post:Lorg/jline/utils/AttributedString;

    iput-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->computed:Lorg/jline/utils/AttributedString;

    .line 4814
    :goto_1
    iget v3, v0, Lorg/jline/reader/impl/LineReaderImpl$PostResult;->lines:I

    iput v3, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->lines:I

    .line 4815
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->possible:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->lines:I

    add-int/2addr v3, v4

    sub-int/2addr v3, v2

    div-int/2addr v3, v4

    iput v3, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->columns:I

    .line 4816
    return-void
.end method


# virtual methods
.method public completion()Lorg/jline/reader/Candidate;
    .locals 2

    .line 4687
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->possible:Ljava/util/List;

    iget v1, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->selection:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/reader/Candidate;

    return-object v0
.end method

.method public down()V
    .locals 2

    .line 4753
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->this$0:Lorg/jline/reader/impl/LineReaderImpl;

    sget-object v1, Lorg/jline/reader/LineReader$Option;->LIST_ROWS_FIRST:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {v0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4754
    invoke-direct {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->major(I)V

    goto :goto_0

    .line 4756
    :cond_0
    invoke-direct {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->minor(I)V

    .line 4758
    :goto_0
    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 4664
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->get()Lorg/jline/utils/AttributedString;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/jline/utils/AttributedString;
    .locals 1

    .line 4820
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->computed:Lorg/jline/utils/AttributedString;

    return-object v0
.end method

.method public left()V
    .locals 2

    .line 4761
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->this$0:Lorg/jline/reader/impl/LineReaderImpl;

    sget-object v1, Lorg/jline/reader/LineReader$Option;->LIST_ROWS_FIRST:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {v0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 4762
    invoke-direct {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->minor(I)V

    goto :goto_0

    .line 4764
    :cond_0
    invoke-direct {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->major(I)V

    .line 4766
    :goto_0
    return-void
.end method

.method public next()V
    .locals 2

    .line 4691
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->selection:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->possible:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->selection:I

    .line 4692
    invoke-direct {p0}, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->update()V

    .line 4693
    return-void
.end method

.method public previous()V
    .locals 2

    .line 4696
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->selection:I

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->possible:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->possible:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->selection:I

    .line 4697
    invoke-direct {p0}, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->update()V

    .line 4698
    return-void
.end method

.method public right()V
    .locals 2

    .line 4769
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->this$0:Lorg/jline/reader/impl/LineReaderImpl;

    sget-object v1, Lorg/jline/reader/LineReader$Option;->LIST_ROWS_FIRST:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {v0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4770
    invoke-direct {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->minor(I)V

    goto :goto_0

    .line 4772
    :cond_0
    invoke-direct {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->major(I)V

    .line 4774
    :goto_0
    return-void
.end method

.method public up()V
    .locals 2

    .line 4745
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->this$0:Lorg/jline/reader/impl/LineReaderImpl;

    sget-object v1, Lorg/jline/reader/LineReader$Option;->LIST_ROWS_FIRST:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {v0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 4746
    invoke-direct {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->major(I)V

    goto :goto_0

    .line 4748
    :cond_0
    invoke-direct {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->minor(I)V

    .line 4750
    :goto_0
    return-void
.end method
