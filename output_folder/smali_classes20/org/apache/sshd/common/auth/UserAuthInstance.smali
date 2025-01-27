.class public interface abstract Lorg/apache/sshd/common/auth/UserAuthInstance;
.super Ljava/lang/Object;
.source "UserAuthInstance.java"

# interfaces
.implements Lorg/apache/sshd/common/NamedResource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/sshd/common/session/SessionContext;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/NamedResource;"
    }
.end annotation


# virtual methods
.method public abstract getSession()Lorg/apache/sshd/common/session/SessionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method
