.class public Lorg/jline/builtins/NfaMatcher;
.super Ljava/lang/Object;
.source "NfaMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/builtins/NfaMatcher$Frag;,
        Lorg/jline/builtins/NfaMatcher$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final matcher:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final regexp:Ljava/lang/String;

.field private volatile start:Lorg/jline/builtins/NfaMatcher$State;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/function/BiFunction;)V
    .locals 0
    .param p1, "regexp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/BiFunction<",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 26
    .local p0, "this":Lorg/jline/builtins/NfaMatcher;, "Lorg/jline/builtins/NfaMatcher<TT;>;"
    .local p2, "matcher":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<TT;Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/jline/builtins/NfaMatcher;->regexp:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lorg/jline/builtins/NfaMatcher;->matcher:Ljava/util/function/BiFunction;

    .line 29
    return-void
.end method

.method static synthetic lambda$match$0(Lorg/jline/builtins/NfaMatcher$State;)Z
    .locals 2
    .param p0, "s"    # Lorg/jline/builtins/NfaMatcher$State;

    .line 44
    iget-object v0, p0, Lorg/jline/builtins/NfaMatcher$State;->c:Ljava/lang/String;

    const-string v1, "++MATCH++"

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jline/builtins/NfaMatcher$State;->c:Ljava/lang/String;

    const-string v1, "++SPLIT++"

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$match$3(Lorg/jline/builtins/NfaMatcher$State;)Z
    .locals 2
    .param p0, "s"    # Lorg/jline/builtins/NfaMatcher$State;

    .line 50
    iget-object v0, p0, Lorg/jline/builtins/NfaMatcher$State;->c:Ljava/lang/String;

    const-string v1, "++MATCH++"

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$matchPartial$4(Lorg/jline/builtins/NfaMatcher$State;)Z
    .locals 2
    .param p0, "s"    # Lorg/jline/builtins/NfaMatcher$State;

    .line 66
    iget-object v0, p0, Lorg/jline/builtins/NfaMatcher$State;->c:Ljava/lang/String;

    const-string v1, "++MATCH++"

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jline/builtins/NfaMatcher$State;->c:Ljava/lang/String;

    const-string v1, "++SPLIT++"

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$matchPartial$7(Lorg/jline/builtins/NfaMatcher$State;)Z
    .locals 2
    .param p0, "s"    # Lorg/jline/builtins/NfaMatcher$State;

    .line 72
    iget-object v0, p0, Lorg/jline/builtins/NfaMatcher$State;->c:Ljava/lang/String;

    const-string v1, "++MATCH++"

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jline/builtins/NfaMatcher$State;->c:Ljava/lang/String;

    const-string v1, "++SPLIT++"

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$matchPartial$8(Lorg/jline/builtins/NfaMatcher$State;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Lorg/jline/builtins/NfaMatcher$State;

    .line 73
    iget-object v0, p0, Lorg/jline/builtins/NfaMatcher$State;->c:Ljava/lang/String;

    return-object v0
.end method

.method static toNfa(Ljava/util/List;)Lorg/jline/builtins/NfaMatcher$State;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jline/builtins/NfaMatcher$State;"
        }
    .end annotation

    .line 87
    .local p0, "postfix":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 90
    .local v0, "stack":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/jline/builtins/NfaMatcher$Frag;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 91
    .local v2, "p":Ljava/lang/String;
    const/4 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v5, "|"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_1
    const-string v5, "?"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_2
    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_3
    const-string v5, "+"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_4
    const-string v5, "*"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x3

    :goto_1
    const-string v5, "++SPLIT++"

    packed-switch v4, :pswitch_data_0

    .line 122
    new-instance v4, Lorg/jline/builtins/NfaMatcher$State;

    invoke-direct {v4, v2, v3, v3}, Lorg/jline/builtins/NfaMatcher$State;-><init>(Ljava/lang/String;Lorg/jline/builtins/NfaMatcher$State;Lorg/jline/builtins/NfaMatcher$State;)V

    move-object v3, v4

    .line 123
    .local v3, "s":Lorg/jline/builtins/NfaMatcher$State;
    new-instance v4, Lorg/jline/builtins/NfaMatcher$Frag;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lorg/jline/builtins/NfaMatcher$$ExternalSyntheticLambda6;

    invoke-direct {v5, v3}, Lorg/jline/builtins/NfaMatcher$$ExternalSyntheticLambda6;-><init>(Lorg/jline/builtins/NfaMatcher$State;)V

    invoke-direct {v4, v3, v5}, Lorg/jline/builtins/NfaMatcher$Frag;-><init>(Lorg/jline/builtins/NfaMatcher$State;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v4}, Ljava/util/Deque;->offerLast(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 116
    .end local v3    # "s":Lorg/jline/builtins/NfaMatcher$State;
    :pswitch_0
    invoke-interface {v0}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jline/builtins/NfaMatcher$Frag;

    .line 117
    .local v4, "e":Lorg/jline/builtins/NfaMatcher$Frag;
    new-instance v6, Lorg/jline/builtins/NfaMatcher$State;

    iget-object v7, v4, Lorg/jline/builtins/NfaMatcher$Frag;->start:Lorg/jline/builtins/NfaMatcher$State;

    invoke-direct {v6, v5, v7, v3}, Lorg/jline/builtins/NfaMatcher$State;-><init>(Ljava/lang/String;Lorg/jline/builtins/NfaMatcher$State;Lorg/jline/builtins/NfaMatcher$State;)V

    move-object v3, v6

    .line 118
    .restart local v3    # "s":Lorg/jline/builtins/NfaMatcher$State;
    invoke-virtual {v4, v3}, Lorg/jline/builtins/NfaMatcher$Frag;->patch(Lorg/jline/builtins/NfaMatcher$State;)V

    .line 119
    new-instance v5, Lorg/jline/builtins/NfaMatcher$Frag;

    iget-object v6, v4, Lorg/jline/builtins/NfaMatcher$Frag;->start:Lorg/jline/builtins/NfaMatcher$State;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lorg/jline/builtins/NfaMatcher$$ExternalSyntheticLambda5;

    invoke-direct {v7, v3}, Lorg/jline/builtins/NfaMatcher$$ExternalSyntheticLambda5;-><init>(Lorg/jline/builtins/NfaMatcher$State;)V

    invoke-direct {v5, v6, v7}, Lorg/jline/builtins/NfaMatcher$Frag;-><init>(Lorg/jline/builtins/NfaMatcher$State;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v5}, Ljava/util/Deque;->offerLast(Ljava/lang/Object;)Z

    .line 120
    goto/16 :goto_2

    .line 110
    .end local v3    # "s":Lorg/jline/builtins/NfaMatcher$State;
    .end local v4    # "e":Lorg/jline/builtins/NfaMatcher$Frag;
    :pswitch_1
    invoke-interface {v0}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jline/builtins/NfaMatcher$Frag;

    .line 111
    .restart local v4    # "e":Lorg/jline/builtins/NfaMatcher$Frag;
    new-instance v6, Lorg/jline/builtins/NfaMatcher$State;

    iget-object v7, v4, Lorg/jline/builtins/NfaMatcher$Frag;->start:Lorg/jline/builtins/NfaMatcher$State;

    invoke-direct {v6, v5, v7, v3}, Lorg/jline/builtins/NfaMatcher$State;-><init>(Ljava/lang/String;Lorg/jline/builtins/NfaMatcher$State;Lorg/jline/builtins/NfaMatcher$State;)V

    move-object v3, v6

    .line 112
    .restart local v3    # "s":Lorg/jline/builtins/NfaMatcher$State;
    invoke-virtual {v4, v3}, Lorg/jline/builtins/NfaMatcher$Frag;->patch(Lorg/jline/builtins/NfaMatcher$State;)V

    .line 113
    new-instance v5, Lorg/jline/builtins/NfaMatcher$Frag;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lorg/jline/builtins/NfaMatcher$$ExternalSyntheticLambda5;

    invoke-direct {v6, v3}, Lorg/jline/builtins/NfaMatcher$$ExternalSyntheticLambda5;-><init>(Lorg/jline/builtins/NfaMatcher$State;)V

    invoke-direct {v5, v3, v6}, Lorg/jline/builtins/NfaMatcher$Frag;-><init>(Lorg/jline/builtins/NfaMatcher$State;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v5}, Ljava/util/Deque;->offerLast(Ljava/lang/Object;)Z

    .line 114
    goto :goto_2

    .line 105
    .end local v3    # "s":Lorg/jline/builtins/NfaMatcher$State;
    .end local v4    # "e":Lorg/jline/builtins/NfaMatcher$Frag;
    :pswitch_2
    invoke-interface {v0}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jline/builtins/NfaMatcher$Frag;

    .line 106
    .restart local v4    # "e":Lorg/jline/builtins/NfaMatcher$Frag;
    new-instance v6, Lorg/jline/builtins/NfaMatcher$State;

    iget-object v7, v4, Lorg/jline/builtins/NfaMatcher$Frag;->start:Lorg/jline/builtins/NfaMatcher$State;

    invoke-direct {v6, v5, v7, v3}, Lorg/jline/builtins/NfaMatcher$State;-><init>(Ljava/lang/String;Lorg/jline/builtins/NfaMatcher$State;Lorg/jline/builtins/NfaMatcher$State;)V

    move-object v3, v6

    .line 107
    .restart local v3    # "s":Lorg/jline/builtins/NfaMatcher$State;
    new-instance v5, Lorg/jline/builtins/NfaMatcher$Frag;

    iget-object v6, v4, Lorg/jline/builtins/NfaMatcher$Frag;->out:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lorg/jline/builtins/NfaMatcher$$ExternalSyntheticLambda5;

    invoke-direct {v7, v3}, Lorg/jline/builtins/NfaMatcher$$ExternalSyntheticLambda5;-><init>(Lorg/jline/builtins/NfaMatcher$State;)V

    invoke-direct {v5, v3, v6, v7}, Lorg/jline/builtins/NfaMatcher$Frag;-><init>(Lorg/jline/builtins/NfaMatcher$State;Ljava/util/Collection;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v5}, Ljava/util/Deque;->offerLast(Ljava/lang/Object;)Z

    .line 108
    goto :goto_2

    .line 99
    .end local v3    # "s":Lorg/jline/builtins/NfaMatcher$State;
    .end local v4    # "e":Lorg/jline/builtins/NfaMatcher$Frag;
    :pswitch_3
    invoke-interface {v0}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jline/builtins/NfaMatcher$Frag;

    .line 100
    .local v3, "e2":Lorg/jline/builtins/NfaMatcher$Frag;
    invoke-interface {v0}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jline/builtins/NfaMatcher$Frag;

    .line 101
    .local v4, "e1":Lorg/jline/builtins/NfaMatcher$Frag;
    new-instance v6, Lorg/jline/builtins/NfaMatcher$State;

    iget-object v7, v4, Lorg/jline/builtins/NfaMatcher$Frag;->start:Lorg/jline/builtins/NfaMatcher$State;

    iget-object v8, v3, Lorg/jline/builtins/NfaMatcher$Frag;->start:Lorg/jline/builtins/NfaMatcher$State;

    invoke-direct {v6, v5, v7, v8}, Lorg/jline/builtins/NfaMatcher$State;-><init>(Ljava/lang/String;Lorg/jline/builtins/NfaMatcher$State;Lorg/jline/builtins/NfaMatcher$State;)V

    move-object v5, v6

    .line 102
    .local v5, "s":Lorg/jline/builtins/NfaMatcher$State;
    new-instance v6, Lorg/jline/builtins/NfaMatcher$Frag;

    iget-object v7, v4, Lorg/jline/builtins/NfaMatcher$Frag;->out:Ljava/util/List;

    iget-object v8, v3, Lorg/jline/builtins/NfaMatcher$Frag;->out:Ljava/util/List;

    invoke-direct {v6, v5, v7, v8}, Lorg/jline/builtins/NfaMatcher$Frag;-><init>(Lorg/jline/builtins/NfaMatcher$State;Ljava/util/Collection;Ljava/util/Collection;)V

    invoke-interface {v0, v6}, Ljava/util/Deque;->offerLast(Ljava/lang/Object;)Z

    .line 103
    goto :goto_2

    .line 93
    .end local v3    # "e2":Lorg/jline/builtins/NfaMatcher$Frag;
    .end local v4    # "e1":Lorg/jline/builtins/NfaMatcher$Frag;
    .end local v5    # "s":Lorg/jline/builtins/NfaMatcher$State;
    :pswitch_4
    invoke-interface {v0}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jline/builtins/NfaMatcher$Frag;

    .line 94
    .restart local v3    # "e2":Lorg/jline/builtins/NfaMatcher$Frag;
    invoke-interface {v0}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jline/builtins/NfaMatcher$Frag;

    .line 95
    .restart local v4    # "e1":Lorg/jline/builtins/NfaMatcher$Frag;
    iget-object v5, v3, Lorg/jline/builtins/NfaMatcher$Frag;->start:Lorg/jline/builtins/NfaMatcher$State;

    invoke-virtual {v4, v5}, Lorg/jline/builtins/NfaMatcher$Frag;->patch(Lorg/jline/builtins/NfaMatcher$State;)V

    .line 96
    new-instance v5, Lorg/jline/builtins/NfaMatcher$Frag;

    iget-object v6, v4, Lorg/jline/builtins/NfaMatcher$Frag;->start:Lorg/jline/builtins/NfaMatcher$State;

    iget-object v7, v3, Lorg/jline/builtins/NfaMatcher$Frag;->out:Ljava/util/List;

    invoke-direct {v5, v6, v7}, Lorg/jline/builtins/NfaMatcher$Frag;-><init>(Lorg/jline/builtins/NfaMatcher$State;Ljava/util/Collection;)V

    invoke-interface {v0, v5}, Ljava/util/Deque;->offerLast(Ljava/lang/Object;)Z

    .line 97
    nop

    .line 126
    .end local v2    # "p":Ljava/lang/String;
    .end local v3    # "e2":Lorg/jline/builtins/NfaMatcher$Frag;
    .end local v4    # "e1":Lorg/jline/builtins/NfaMatcher$Frag;
    :goto_2
    goto/16 :goto_0

    .line 127
    :cond_1
    invoke-interface {v0}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/builtins/NfaMatcher$Frag;

    .line 128
    .local v1, "e":Lorg/jline/builtins/NfaMatcher$Frag;
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 131
    new-instance v2, Lorg/jline/builtins/NfaMatcher$State;

    const-string v4, "++MATCH++"

    invoke-direct {v2, v4, v3, v3}, Lorg/jline/builtins/NfaMatcher$State;-><init>(Ljava/lang/String;Lorg/jline/builtins/NfaMatcher$State;Lorg/jline/builtins/NfaMatcher$State;)V

    invoke-virtual {v1, v2}, Lorg/jline/builtins/NfaMatcher$Frag;->patch(Lorg/jline/builtins/NfaMatcher$State;)V

    .line 132
    iget-object v2, v1, Lorg/jline/builtins/NfaMatcher$Frag;->start:Lorg/jline/builtins/NfaMatcher$State;

    return-object v2

    .line 129
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong postfix expression, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " elements remaining"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_4
        0x2b -> :sswitch_3
        0x2e -> :sswitch_2
        0x3f -> :sswitch_1
        0x7c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static toPostFix(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .param p0, "regexp"    # Ljava/lang/String;
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

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v0, "postfix":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, -0x1

    .line 138
    .local v1, "s":I
    const/4 v2, 0x0

    .line 139
    .local v2, "natom":I
    const/4 v3, 0x0

    .line 140
    .local v3, "nalt":I
    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    .line 141
    .local v4, "natoms":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayDeque;

    invoke-direct {v5}, Ljava/util/ArrayDeque;-><init>()V

    .line 142
    .local v5, "nalts":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    const-string v8, "|"

    const-string v9, "."

    const/4 v10, 0x1

    if-ge v6, v7, :cond_c

    .line 143
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 145
    .local v7, "c":C
    invoke-static {v7}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 146
    if-gez v1, :cond_b

    .line 147
    move v1, v6

    goto/16 :goto_4

    .line 152
    :cond_0
    if-ltz v1, :cond_2

    .line 153
    if-le v2, v10, :cond_1

    .line 154
    add-int/lit8 v2, v2, -0x1

    .line 155
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_1
    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    add-int/2addr v2, v10

    .line 159
    const/4 v1, -0x1

    .line 162
    :cond_2
    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 163
    goto/16 :goto_4

    .line 166
    :cond_3
    const-string v11, "\' at pos "

    const-string v12, "unexpected \'"

    sparse-switch v7, :sswitch_data_0

    .line 209
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 178
    :sswitch_0
    if-eqz v2, :cond_5

    .line 181
    :goto_1
    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_4

    .line 182
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 184
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 185
    goto/16 :goto_4

    .line 179
    :cond_5
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 203
    :sswitch_1
    if-eqz v2, :cond_6

    .line 206
    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    goto/16 :goto_4

    .line 204
    :cond_6
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 187
    :sswitch_2
    invoke-interface {v5}, Ljava/util/Deque;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_9

    if-eqz v2, :cond_9

    .line 190
    :goto_2
    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_7

    .line 191
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 193
    :cond_7
    :goto_3
    if-lez v3, :cond_8

    .line 194
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 196
    :cond_8
    invoke-interface {v5}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 197
    invoke-interface {v4}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 198
    add-int/2addr v2, v10

    .line 199
    goto :goto_4

    .line 188
    :cond_9
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 168
    :sswitch_3
    if-le v2, v10, :cond_a

    .line 169
    add-int/lit8 v2, v2, -0x1

    .line 170
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Deque;->offerLast(Ljava/lang/Object;)Z

    .line 173
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Deque;->offerLast(Ljava/lang/Object;)Z

    .line 174
    const/4 v3, 0x0

    .line 175
    const/4 v2, 0x0

    .line 176
    nop

    .line 142
    .end local v7    # "c":C
    :cond_b
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 213
    .end local v6    # "i":I
    :cond_c
    if-ltz v1, :cond_e

    .line 214
    if-le v2, v10, :cond_d

    .line 215
    add-int/lit8 v2, v2, -0x1

    .line 216
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_d
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    add-int/2addr v2, v10

    .line 222
    :cond_e
    :goto_5
    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_f

    .line 223
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 226
    :cond_f
    :goto_6
    if-lez v3, :cond_10

    .line 227
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 229
    :cond_10
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x28 -> :sswitch_3
        0x29 -> :sswitch_2
        0x2a -> :sswitch_1
        0x2b -> :sswitch_1
        0x3f -> :sswitch_1
        0x7c -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method addState(Ljava/util/Set;Lorg/jline/builtins/NfaMatcher$State;)V
    .locals 2
    .param p2, "s"    # Lorg/jline/builtins/NfaMatcher$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/jline/builtins/NfaMatcher$State;",
            ">;",
            "Lorg/jline/builtins/NfaMatcher$State;",
            ")V"
        }
    .end annotation

    .line 78
    .local p0, "this":Lorg/jline/builtins/NfaMatcher;, "Lorg/jline/builtins/NfaMatcher<TT;>;"
    .local p1, "l":Ljava/util/Set;, "Ljava/util/Set<Lorg/jline/builtins/NfaMatcher$State;>;"
    if-eqz p2, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p2, Lorg/jline/builtins/NfaMatcher$State;->c:Ljava/lang/String;

    const-string v1, "++SPLIT++"

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p2, Lorg/jline/builtins/NfaMatcher$State;->out:Lorg/jline/builtins/NfaMatcher$State;

    invoke-virtual {p0, p1, v0}, Lorg/jline/builtins/NfaMatcher;->addState(Ljava/util/Set;Lorg/jline/builtins/NfaMatcher$State;)V

    .line 81
    iget-object v0, p2, Lorg/jline/builtins/NfaMatcher$State;->out1:Lorg/jline/builtins/NfaMatcher$State;

    invoke-virtual {p0, p1, v0}, Lorg/jline/builtins/NfaMatcher;->addState(Ljava/util/Set;Lorg/jline/builtins/NfaMatcher$State;)V

    .line 84
    :cond_0
    return-void
.end method

.method public compile()V
    .locals 1

    .line 32
    .local p0, "this":Lorg/jline/builtins/NfaMatcher;, "Lorg/jline/builtins/NfaMatcher<TT;>;"
    iget-object v0, p0, Lorg/jline/builtins/NfaMatcher;->start:Lorg/jline/builtins/NfaMatcher$State;

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lorg/jline/builtins/NfaMatcher;->regexp:Ljava/lang/String;

    invoke-static {v0}, Lorg/jline/builtins/NfaMatcher;->toPostFix(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/jline/builtins/NfaMatcher;->toNfa(Ljava/util/List;)Lorg/jline/builtins/NfaMatcher$State;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/builtins/NfaMatcher;->start:Lorg/jline/builtins/NfaMatcher$State;

    .line 35
    :cond_0
    return-void
.end method

.method synthetic lambda$match$1$org-jline-builtins-NfaMatcher(Ljava/lang/Object;Lorg/jline/builtins/NfaMatcher$State;)Z
    .locals 2
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/jline/builtins/NfaMatcher$State;

    .line 45
    .local p0, "this":Lorg/jline/builtins/NfaMatcher;, "Lorg/jline/builtins/NfaMatcher<TT;>;"
    iget-object v0, p0, Lorg/jline/builtins/NfaMatcher;->matcher:Ljava/util/function/BiFunction;

    iget-object v1, p2, Lorg/jline/builtins/NfaMatcher$State;->c:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$match$2$org-jline-builtins-NfaMatcher(Ljava/util/Set;Lorg/jline/builtins/NfaMatcher$State;)V
    .locals 1
    .param p1, "nlist"    # Ljava/util/Set;
    .param p2, "s"    # Lorg/jline/builtins/NfaMatcher$State;

    .line 46
    .local p0, "this":Lorg/jline/builtins/NfaMatcher;, "Lorg/jline/builtins/NfaMatcher<TT;>;"
    iget-object v0, p2, Lorg/jline/builtins/NfaMatcher$State;->out:Lorg/jline/builtins/NfaMatcher$State;

    invoke-virtual {p0, p1, v0}, Lorg/jline/builtins/NfaMatcher;->addState(Ljava/util/Set;Lorg/jline/builtins/NfaMatcher$State;)V

    return-void
.end method

.method synthetic lambda$matchPartial$5$org-jline-builtins-NfaMatcher(Ljava/lang/Object;Lorg/jline/builtins/NfaMatcher$State;)Z
    .locals 2
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/jline/builtins/NfaMatcher$State;

    .line 67
    .local p0, "this":Lorg/jline/builtins/NfaMatcher;, "Lorg/jline/builtins/NfaMatcher<TT;>;"
    iget-object v0, p0, Lorg/jline/builtins/NfaMatcher;->matcher:Ljava/util/function/BiFunction;

    iget-object v1, p2, Lorg/jline/builtins/NfaMatcher$State;->c:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$matchPartial$6$org-jline-builtins-NfaMatcher(Ljava/util/Set;Lorg/jline/builtins/NfaMatcher$State;)V
    .locals 1
    .param p1, "nlist"    # Ljava/util/Set;
    .param p2, "s"    # Lorg/jline/builtins/NfaMatcher$State;

    .line 68
    .local p0, "this":Lorg/jline/builtins/NfaMatcher;, "Lorg/jline/builtins/NfaMatcher<TT;>;"
    iget-object v0, p2, Lorg/jline/builtins/NfaMatcher$State;->out:Lorg/jline/builtins/NfaMatcher$State;

    invoke-virtual {p0, p1, v0}, Lorg/jline/builtins/NfaMatcher;->addState(Ljava/util/Set;Lorg/jline/builtins/NfaMatcher$State;)V

    return-void
.end method

.method public match(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)Z"
        }
    .end annotation

    .line 38
    .local p0, "this":Lorg/jline/builtins/NfaMatcher;, "Lorg/jline/builtins/NfaMatcher<TT;>;"
    .local p1, "args":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 39
    .local v0, "clist":Ljava/util/Set;, "Ljava/util/Set<Lorg/jline/builtins/NfaMatcher$State;>;"
    invoke-virtual {p0}, Lorg/jline/builtins/NfaMatcher;->compile()V

    .line 40
    iget-object v1, p0, Lorg/jline/builtins/NfaMatcher;->start:Lorg/jline/builtins/NfaMatcher$State;

    invoke-virtual {p0, v0, v1}, Lorg/jline/builtins/NfaMatcher;->addState(Ljava/util/Set;Lorg/jline/builtins/NfaMatcher$State;)V

    .line 41
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 42
    .local v2, "arg":Ljava/lang/Object;, "TT;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 43
    .local v3, "nlist":Ljava/util/Set;, "Ljava/util/Set<Lorg/jline/builtins/NfaMatcher$State;>;"
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/jline/builtins/NfaMatcher$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/jline/builtins/NfaMatcher$$ExternalSyntheticLambda0;-><init>()V

    .line 44
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/jline/builtins/NfaMatcher$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v2}, Lorg/jline/builtins/NfaMatcher$$ExternalSyntheticLambda2;-><init>(Lorg/jline/builtins/NfaMatcher;Ljava/lang/Object;)V

    .line 45
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/jline/builtins/NfaMatcher$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, v3}, Lorg/jline/builtins/NfaMatcher$$ExternalSyntheticLambda3;-><init>(Lorg/jline/builtins/NfaMatcher;Ljava/util/Set;)V

    .line 46
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 47
    move-object v0, v3

    .line 48
    .end local v2    # "arg":Ljava/lang/Object;, "TT;"
    .end local v3    # "nlist":Ljava/util/Set;, "Ljava/util/Set<Lorg/jline/builtins/NfaMatcher$State;>;"
    goto :goto_0

    .line 49
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/jline/builtins/NfaMatcher$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lorg/jline/builtins/NfaMatcher$$ExternalSyntheticLambda4;-><init>()V

    .line 50
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    .line 49
    return v1
.end method

.method public matchPartial(Ljava/util/List;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    .local p0, "this":Lorg/jline/builtins/NfaMatcher;, "Lorg/jline/builtins/NfaMatcher<TT;>;"
    .local p1, "args":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 61
    .local v0, "clist":Ljava/util/Set;, "Ljava/util/Set<Lorg/jline/builtins/NfaMatcher$State;>;"
    invoke-virtual {p0}, Lorg/jline/builtins/NfaMatcher;->compile()V

    .line 62
    iget-object v1, p0, Lorg/jline/builtins/NfaMatcher;->start:Lorg/jline/builtins/NfaMatcher$State;

    invoke-virtual {p0, v0, v1}, Lorg/jline/builtins/NfaMatcher;->addState(Ljava/util/Set;Lorg/jline/builtins/NfaMatcher$State;)V

    .line 63
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 64
    .local v2, "arg":Ljava/lang/Object;, "TT;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 65
    .local v3, "nlist":Ljava/util/Set;, "Ljava/util/Set<Lorg/jline/builtins/NfaMatcher$State;>;"
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/jline/builtins/NfaMatcher$$ExternalSyntheticLambda7;

    invoke-direct {v5}, Lorg/jline/builtins/NfaMatcher$$ExternalSyntheticLambda7;-><init>()V

    .line 66
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/jline/builtins/NfaMatcher$$ExternalSyntheticLambda8;

    invoke-direct {v5, p0, v2}, Lorg/jline/builtins/NfaMatcher$$ExternalSyntheticLambda8;-><init>(Lorg/jline/builtins/NfaMatcher;Ljava/lang/Object;)V

    .line 67
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/jline/builtins/NfaMatcher$$ExternalSyntheticLambda9;

    invoke-direct {v5, p0, v3}, Lorg/jline/builtins/NfaMatcher$$ExternalSyntheticLambda9;-><init>(Lorg/jline/builtins/NfaMatcher;Ljava/util/Set;)V

    .line 68
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 69
    move-object v0, v3

    .line 70
    .end local v2    # "arg":Ljava/lang/Object;, "TT;"
    .end local v3    # "nlist":Ljava/util/Set;, "Ljava/util/Set<Lorg/jline/builtins/NfaMatcher$State;>;"
    goto :goto_0

    .line 71
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/jline/builtins/NfaMatcher$$ExternalSyntheticLambda10;

    invoke-direct {v2}, Lorg/jline/builtins/NfaMatcher$$ExternalSyntheticLambda10;-><init>()V

    .line 72
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/jline/builtins/NfaMatcher$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/jline/builtins/NfaMatcher$$ExternalSyntheticLambda1;-><init>()V

    .line 73
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 74
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 71
    return-object v1
.end method
