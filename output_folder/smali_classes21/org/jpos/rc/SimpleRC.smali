.class public Lorg/jpos/rc/SimpleRC;
.super Ljava/lang/Object;
.source "SimpleRC.java"

# interfaces
.implements Lorg/jpos/rc/RC;


# instance fields
.field private display:Ljava/lang/String;

.field private rc:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "rc"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/jpos/rc/SimpleRC;->rc:Ljava/lang/String;

    .line 36
    if-eqz p1, :cond_0

    .line 38
    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "rc"    # Ljava/lang/String;
    .param p2, "display"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1}, Lorg/jpos/rc/SimpleRC;-><init>(Ljava/lang/String;)V

    .line 42
    iput-object p2, p0, Lorg/jpos/rc/SimpleRC;->display:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public display()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/jpos/rc/SimpleRC;->display:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 53
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 54
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 55
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/jpos/rc/SimpleRC;

    .line 56
    .local v2, "simpleRC":Lorg/jpos/rc/SimpleRC;
    iget-object v3, p0, Lorg/jpos/rc/SimpleRC;->rc:Ljava/lang/String;

    iget-object v4, v2, Lorg/jpos/rc/SimpleRC;->rc:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/jpos/rc/SimpleRC;->display:Ljava/lang/String;

    iget-object v4, v2, Lorg/jpos/rc/SimpleRC;->display:Ljava/lang/String;

    .line 57
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 56
    :goto_0
    return v0

    .line 54
    .end local v2    # "simpleRC":Lorg/jpos/rc/SimpleRC;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/jpos/rc/SimpleRC;->rc:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/jpos/rc/SimpleRC;->display:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public rc()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/jpos/rc/SimpleRC;->rc:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimpleRC{rc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jpos/rc/SimpleRC;->rc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", display=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/jpos/rc/SimpleRC;->display:Ljava/lang/String;

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
