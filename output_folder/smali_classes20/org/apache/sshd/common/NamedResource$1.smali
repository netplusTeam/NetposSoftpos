.class final Lorg/apache/sshd/common/NamedResource$1;
.super Ljava/lang/Object;
.source "NamedResource.java"

# interfaces
.implements Lorg/apache/sshd/common/NamedResource;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/common/NamedResource;->ofName(Ljava/lang/String;)Lorg/apache/sshd/common/NamedResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lorg/apache/sshd/common/NamedResource$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/apache/sshd/common/NamedResource$1;->val$name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 123
    invoke-virtual {p0}, Lorg/apache/sshd/common/NamedResource$1;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
