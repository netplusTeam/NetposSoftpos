.class public abstract Lorg/apache/commons/collections4/sequence/EditCommand;
.super Ljava/lang/Object;
.source "EditCommand.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lorg/apache/commons/collections4/sequence/EditCommand;, "Lorg/apache/commons/collections4/sequence/EditCommand<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/apache/commons/collections4/sequence/EditCommand;->object:Ljava/lang/Object;

    .line 60
    return-void
.end method


# virtual methods
.method public abstract accept(Lorg/apache/commons/collections4/sequence/CommandVisitor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/sequence/CommandVisitor<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method protected getObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 68
    .local p0, "this":Lorg/apache/commons/collections4/sequence/EditCommand;, "Lorg/apache/commons/collections4/sequence/EditCommand<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/sequence/EditCommand;->object:Ljava/lang/Object;

    return-object v0
.end method
