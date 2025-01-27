.class public abstract Lorg/jpos/tlv/TagValueBase;
.super Ljava/lang/Object;
.source "TagValueBase.java"

# interfaces
.implements Lorg/jpos/tlv/TagValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/jpos/tlv/TagValue<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final tag:Ljava/lang/String;

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 29
    .local p0, "this":Lorg/jpos/tlv/TagValueBase;, "Lorg/jpos/tlv/TagValueBase<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/jpos/tlv/TagValueBase;->tag:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lorg/jpos/tlv/TagValueBase;->value:Ljava/lang/Object;

    .line 32
    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .line 36
    .local p0, "this":Lorg/jpos/tlv/TagValueBase;, "Lorg/jpos/tlv/TagValueBase<TT;>;"
    iget-object v0, p0, Lorg/jpos/tlv/TagValueBase;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 41
    .local p0, "this":Lorg/jpos/tlv/TagValueBase;, "Lorg/jpos/tlv/TagValueBase<TT;>;"
    iget-object v0, p0, Lorg/jpos/tlv/TagValueBase;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public isComposite()Z
    .locals 1

    .line 46
    .local p0, "this":Lorg/jpos/tlv/TagValueBase;, "Lorg/jpos/tlv/TagValueBase<TT;>;"
    const/4 v0, 0x0

    return v0
.end method
