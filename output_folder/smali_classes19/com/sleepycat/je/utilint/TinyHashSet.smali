.class public Lcom/sleepycat/je/utilint/TinyHashSet;
.super Ljava/lang/Object;
.source "TinyHashSet.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/utilint/TinyHashSet$TwoElementIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private elem1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private elem2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    .local p0, "this":Lcom/sleepycat/je/utilint/TinyHashSet;, "Lcom/sleepycat/je/utilint/TinyHashSet<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 55
    .local p0, "this":Lcom/sleepycat/je/utilint/TinyHashSet;, "Lcom/sleepycat/je/utilint/TinyHashSet<TT;>;"
    .local p1, "o":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->elem1:Ljava/lang/Object;

    .line 57
    return-void
.end method

.method static synthetic access$002(Lcom/sleepycat/je/utilint/TinyHashSet;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/utilint/TinyHashSet;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 40
    iput-object p1, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->elem2:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$102(Lcom/sleepycat/je/utilint/TinyHashSet;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/utilint/TinyHashSet;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 40
    iput-object p1, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->elem1:Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 124
    .local p0, "this":Lcom/sleepycat/je/utilint/TinyHashSet;, "Lcom/sleepycat/je/utilint/TinyHashSet<TT;>;"
    .local p1, "o":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/sleepycat/je/EnvironmentFailureException;->assertState(Z)V

    .line 125
    iget-object v2, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->elem1:Ljava/lang/Object;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->elem2:Ljava/lang/Object;

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->set:Ljava/util/Set;

    if-nez v2, :cond_3

    :cond_2
    move v2, v0

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    invoke-static {v2}, Lcom/sleepycat/je/EnvironmentFailureException;->assertState(Z)V

    .line 126
    iget-object v2, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->set:Ljava/util/Set;

    if-eqz v2, :cond_4

    .line 127
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 129
    :cond_4
    iget-object v2, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->elem1:Ljava/lang/Object;

    if-eqz v2, :cond_6

    if-eq v2, p1, :cond_5

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 130
    :cond_5
    return v1

    .line 132
    :cond_6
    iget-object v2, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->elem2:Ljava/lang/Object;

    if-eqz v2, :cond_8

    if-eq v2, p1, :cond_7

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 133
    :cond_7
    return v1

    .line 135
    :cond_8
    iget-object v1, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->elem1:Ljava/lang/Object;

    if-nez v1, :cond_9

    .line 136
    iput-object p1, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->elem1:Ljava/lang/Object;

    .line 137
    return v0

    .line 139
    :cond_9
    iget-object v1, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->elem2:Ljava/lang/Object;

    if-nez v1, :cond_a

    .line 140
    iput-object p1, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->elem2:Ljava/lang/Object;

    .line 141
    return v0

    .line 143
    :cond_a
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->set:Ljava/util/Set;

    .line 144
    iget-object v1, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->elem1:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->set:Ljava/util/Set;

    iget-object v1, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->elem2:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->elem1:Ljava/lang/Object;

    .line 147
    iput-object v0, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->elem2:Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 76
    .local p0, "this":Lcom/sleepycat/je/utilint/TinyHashSet;, "Lcom/sleepycat/je/utilint/TinyHashSet<TT;>;"
    .local p1, "o":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Lcom/sleepycat/je/EnvironmentFailureException;->assertState(Z)V

    .line 77
    iget-object v2, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->elem1:Ljava/lang/Object;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->elem2:Ljava/lang/Object;

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->set:Ljava/util/Set;

    if-nez v2, :cond_3

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    invoke-static {v2}, Lcom/sleepycat/je/EnvironmentFailureException;->assertState(Z)V

    .line 78
    iget-object v2, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->set:Ljava/util/Set;

    if-eqz v2, :cond_4

    .line 79
    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 81
    :cond_4
    iget-object v2, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->elem1:Ljava/lang/Object;

    if-eqz v2, :cond_6

    if-eq v2, p1, :cond_5

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 82
    :cond_5
    return v1

    .line 84
    :cond_6
    iget-object v2, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->elem2:Ljava/lang/Object;

    if-eqz v2, :cond_8

    if-eq v2, p1, :cond_7

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 85
    :cond_7
    return v1

    .line 87
    :cond_8
    return v0
.end method

.method public copy()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 152
    .local p0, "this":Lcom/sleepycat/je/utilint/TinyHashSet;, "Lcom/sleepycat/je/utilint/TinyHashSet<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->elem1:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->elem2:Ljava/lang/Object;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->set:Ljava/util/Set;

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->assertState(Z)V

    .line 153
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->set:Ljava/util/Set;

    if-eqz v0, :cond_3

    .line 154
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->set:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 156
    :cond_3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 157
    .local v0, "ret":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    iget-object v1, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->elem1:Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 158
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_4
    iget-object v1, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->elem2:Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 161
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_5
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 167
    .local p0, "this":Lcom/sleepycat/je/utilint/TinyHashSet;, "Lcom/sleepycat/je/utilint/TinyHashSet<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->elem1:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->elem2:Ljava/lang/Object;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->set:Ljava/util/Set;

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->assertState(Z)V

    .line 168
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->set:Ljava/util/Set;

    if-eqz v0, :cond_3

    .line 169
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 171
    :cond_3
    new-instance v0, Lcom/sleepycat/je/utilint/TinyHashSet$TwoElementIterator;

    iget-object v1, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->elem1:Ljava/lang/Object;

    iget-object v2, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->elem2:Ljava/lang/Object;

    invoke-direct {v0, p0, v1, v2}, Lcom/sleepycat/je/utilint/TinyHashSet$TwoElementIterator;-><init>(Lcom/sleepycat/je/utilint/TinyHashSet;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 91
    .local p0, "this":Lcom/sleepycat/je/utilint/TinyHashSet;, "Lcom/sleepycat/je/utilint/TinyHashSet<TT;>;"
    .local p1, "o":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Lcom/sleepycat/je/EnvironmentFailureException;->assertState(Z)V

    .line 92
    iget-object v2, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->elem1:Ljava/lang/Object;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->elem2:Ljava/lang/Object;

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->set:Ljava/util/Set;

    if-nez v2, :cond_3

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    invoke-static {v2}, Lcom/sleepycat/je/EnvironmentFailureException;->assertState(Z)V

    .line 93
    iget-object v2, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->set:Ljava/util/Set;

    if-eqz v2, :cond_5

    .line 94
    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 95
    return v0

    .line 110
    :cond_4
    return v1

    .line 112
    :cond_5
    iget-object v2, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->elem1:Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    if-eq v2, p1, :cond_6

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 113
    :cond_6
    iput-object v3, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->elem1:Ljava/lang/Object;

    .line 114
    return v1

    .line 116
    :cond_7
    iget-object v2, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->elem2:Ljava/lang/Object;

    if-eqz v2, :cond_9

    if-eq v2, p1, :cond_8

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 117
    :cond_8
    iput-object v3, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->elem2:Ljava/lang/Object;

    .line 118
    return v1

    .line 120
    :cond_9
    return v0
.end method

.method public size()I
    .locals 2

    .line 63
    .local p0, "this":Lcom/sleepycat/je/utilint/TinyHashSet;, "Lcom/sleepycat/je/utilint/TinyHashSet<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->elem1:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->elem2:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 64
    const/4 v0, 0x2

    return v0

    .line 66
    :cond_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->elem2:Ljava/lang/Object;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TinyHashSet;->set:Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 70
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0

    .line 72
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 67
    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
