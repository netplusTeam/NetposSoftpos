.class public Ljavassist/tools/rmi/RemoteRef;
.super Ljava/lang/Object;
.source "RemoteRef.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public classname:Ljava/lang/String;

.field public oid:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "i"    # I

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Ljavassist/tools/rmi/RemoteRef;->oid:I

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/tools/rmi/RemoteRef;->classname:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Ljavassist/tools/rmi/RemoteRef;->oid:I

    .line 36
    iput-object p2, p0, Ljavassist/tools/rmi/RemoteRef;->classname:Ljava/lang/String;

    .line 37
    return-void
.end method
