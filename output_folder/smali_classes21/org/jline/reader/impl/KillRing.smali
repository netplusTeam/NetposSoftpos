.class public final Lorg/jline/reader/impl/KillRing;
.super Ljava/lang/Object;
.source "KillRing.java"


# static fields
.field private static final DEFAULT_SIZE:I = 0x3c


# instance fields
.field private head:I

.field private lastKill:Z

.field private lastYank:Z

.field private final slots:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/KillRing;-><init>(I)V

    .line 47
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lorg/jline/reader/impl/KillRing;->head:I

    .line 30
    iput-boolean v0, p0, Lorg/jline/reader/impl/KillRing;->lastKill:Z

    .line 31
    iput-boolean v0, p0, Lorg/jline/reader/impl/KillRing;->lastYank:Z

    .line 39
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jline/reader/impl/KillRing;->slots:[Ljava/lang/String;

    .line 40
    return-void
.end method

.method private next()V
    .locals 3

    .line 145
    iget v0, p0, Lorg/jline/reader/impl/KillRing;->head:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v2, p0, Lorg/jline/reader/impl/KillRing;->slots:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    .line 146
    return-void

    .line 148
    :cond_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jline/reader/impl/KillRing;->head:I

    .line 149
    iget-object v2, p0, Lorg/jline/reader/impl/KillRing;->slots:[Ljava/lang/String;

    array-length v2, v2

    if-ne v0, v2, :cond_1

    .line 150
    iput v1, p0, Lorg/jline/reader/impl/KillRing;->head:I

    .line 152
    :cond_1
    return-void
.end method

.method private prev()V
    .locals 2

    .line 160
    iget v0, p0, Lorg/jline/reader/impl/KillRing;->head:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jline/reader/impl/KillRing;->head:I

    .line 161
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 162
    iget-object v0, p0, Lorg/jline/reader/impl/KillRing;->slots:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 163
    .local v0, "x":I
    :goto_0
    if-ltz v0, :cond_1

    .line 164
    iget-object v1, p0, Lorg/jline/reader/impl/KillRing;->slots:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 165
    goto :goto_1

    .line 163
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 168
    :cond_1
    :goto_1
    iput v0, p0, Lorg/jline/reader/impl/KillRing;->head:I

    .line 170
    .end local v0    # "x":I
    :cond_2
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/reader/impl/KillRing;->lastYank:Z

    .line 79
    iget-boolean v0, p0, Lorg/jline/reader/impl/KillRing;->lastKill:Z

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lorg/jline/reader/impl/KillRing;->slots:[Ljava/lang/String;

    iget v1, p0, Lorg/jline/reader/impl/KillRing;->head:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jline/reader/impl/KillRing;->slots:[Ljava/lang/String;

    iget v2, p0, Lorg/jline/reader/impl/KillRing;->head:I

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 82
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jline/reader/impl/KillRing;->lastKill:Z

    .line 87
    invoke-direct {p0}, Lorg/jline/reader/impl/KillRing;->next()V

    .line 88
    iget-object v0, p0, Lorg/jline/reader/impl/KillRing;->slots:[Ljava/lang/String;

    iget v1, p0, Lorg/jline/reader/impl/KillRing;->head:I

    aput-object p1, v0, v1

    .line 89
    return-void
.end method

.method public addBackwards(Ljava/lang/String;)V
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/reader/impl/KillRing;->lastYank:Z

    .line 102
    iget-boolean v0, p0, Lorg/jline/reader/impl/KillRing;->lastKill:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lorg/jline/reader/impl/KillRing;->slots:[Ljava/lang/String;

    iget v1, p0, Lorg/jline/reader/impl/KillRing;->head:I

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jline/reader/impl/KillRing;->slots:[Ljava/lang/String;

    iget v4, p0, Lorg/jline/reader/impl/KillRing;->head:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 105
    return-void

    .line 109
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jline/reader/impl/KillRing;->lastKill:Z

    .line 110
    invoke-direct {p0}, Lorg/jline/reader/impl/KillRing;->next()V

    .line 111
    iget-object v0, p0, Lorg/jline/reader/impl/KillRing;->slots:[Ljava/lang/String;

    iget v1, p0, Lorg/jline/reader/impl/KillRing;->head:I

    aput-object p1, v0, v1

    .line 112
    return-void
.end method

.method public lastYank()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lorg/jline/reader/impl/KillRing;->lastYank:Z

    return v0
.end method

.method public resetLastKill()V
    .locals 1

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/reader/impl/KillRing;->lastKill:Z

    .line 61
    return-void
.end method

.method public resetLastYank()V
    .locals 1

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/reader/impl/KillRing;->lastYank:Z

    .line 54
    return-void
.end method

.method public yank()Ljava/lang/String;
    .locals 2

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/reader/impl/KillRing;->lastKill:Z

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jline/reader/impl/KillRing;->lastYank:Z

    .line 122
    iget-object v0, p0, Lorg/jline/reader/impl/KillRing;->slots:[Ljava/lang/String;

    iget v1, p0, Lorg/jline/reader/impl/KillRing;->head:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public yankPop()Ljava/lang/String;
    .locals 2

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/reader/impl/KillRing;->lastKill:Z

    .line 133
    iget-boolean v0, p0, Lorg/jline/reader/impl/KillRing;->lastYank:Z

    if-eqz v0, :cond_0

    .line 134
    invoke-direct {p0}, Lorg/jline/reader/impl/KillRing;->prev()V

    .line 135
    iget-object v0, p0, Lorg/jline/reader/impl/KillRing;->slots:[Ljava/lang/String;

    iget v1, p0, Lorg/jline/reader/impl/KillRing;->head:I

    aget-object v0, v0, v1

    return-object v0

    .line 137
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
