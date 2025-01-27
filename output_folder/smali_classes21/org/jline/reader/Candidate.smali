.class public Lorg/jline/reader/Candidate;
.super Ljava/lang/Object;
.source "Candidate.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/jline/reader/Candidate;",
        ">;"
    }
.end annotation


# instance fields
.field private final complete:Z

.field private final descr:Ljava/lang/String;

.field private final displ:Ljava/lang/String;

.field private final group:Ljava/lang/String;

.field private final key:Ljava/lang/String;

.field private final suffix:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .param p1, "value"    # Ljava/lang/String;

    .line 34
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lorg/jline/reader/Candidate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "displ"    # Ljava/lang/String;
    .param p3, "group"    # Ljava/lang/String;
    .param p4, "descr"    # Ljava/lang/String;
    .param p5, "suffix"    # Ljava/lang/String;
    .param p6, "key"    # Ljava/lang/String;
    .param p7, "complete"    # Z

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/jline/reader/Candidate;->value:Ljava/lang/String;

    .line 50
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/jline/reader/Candidate;->displ:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lorg/jline/reader/Candidate;->group:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lorg/jline/reader/Candidate;->descr:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Lorg/jline/reader/Candidate;->suffix:Ljava/lang/String;

    .line 54
    iput-object p6, p0, Lorg/jline/reader/Candidate;->key:Ljava/lang/String;

    .line 55
    iput-boolean p7, p0, Lorg/jline/reader/Candidate;->complete:Z

    .line 56
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 18
    check-cast p1, Lorg/jline/reader/Candidate;

    invoke-virtual {p0, p1}, Lorg/jline/reader/Candidate;->compareTo(Lorg/jline/reader/Candidate;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/jline/reader/Candidate;)I
    .locals 2
    .param p1, "o"    # Lorg/jline/reader/Candidate;

    .line 138
    iget-object v0, p0, Lorg/jline/reader/Candidate;->value:Ljava/lang/String;

    iget-object v1, p1, Lorg/jline/reader/Candidate;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public complete()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lorg/jline/reader/Candidate;->complete:Z

    return v0
.end method

.method public descr()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/jline/reader/Candidate;->descr:Ljava/lang/String;

    return-object v0
.end method

.method public displ()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/jline/reader/Candidate;->displ:Ljava/lang/String;

    return-object v0
.end method

.method public group()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/jline/reader/Candidate;->group:Ljava/lang/String;

    return-object v0
.end method

.method public key()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/jline/reader/Candidate;->key:Ljava/lang/String;

    return-object v0
.end method

.method public suffix()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/jline/reader/Candidate;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Candidate{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/reader/Candidate;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/jline/reader/Candidate;->value:Ljava/lang/String;

    return-object v0
.end method
