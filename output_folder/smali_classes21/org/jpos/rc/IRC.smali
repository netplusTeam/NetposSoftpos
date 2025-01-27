.class public interface abstract Lorg/jpos/rc/IRC;
.super Ljava/lang/Object;
.source "IRC.java"


# virtual methods
.method public abstract inhibit()Z
.end method

.method public abstract irc()I
.end method

.method public ircString()Ljava/lang/String;
    .locals 3

    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0}, Lorg/jpos/rc/IRC;->irc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%04d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract success()Z
.end method
