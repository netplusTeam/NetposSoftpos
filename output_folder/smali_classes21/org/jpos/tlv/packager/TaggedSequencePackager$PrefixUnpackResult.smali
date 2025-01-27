.class public Lorg/jpos/tlv/packager/TaggedSequencePackager$PrefixUnpackResult;
.super Ljava/lang/Object;
.source "TaggedSequencePackager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/tlv/packager/TaggedSequencePackager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PrefixUnpackResult"
.end annotation


# instance fields
.field private consumed:I

.field private subFieldId:I

.field final synthetic this$0:Lorg/jpos/tlv/packager/TaggedSequencePackager;


# direct methods
.method public constructor <init>(Lorg/jpos/tlv/packager/TaggedSequencePackager;II)V
    .locals 0
    .param p1, "this$0"    # Lorg/jpos/tlv/packager/TaggedSequencePackager;
    .param p2, "consumed"    # I
    .param p3, "subFieldId"    # I

    .line 259
    iput-object p1, p0, Lorg/jpos/tlv/packager/TaggedSequencePackager$PrefixUnpackResult;->this$0:Lorg/jpos/tlv/packager/TaggedSequencePackager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput p2, p0, Lorg/jpos/tlv/packager/TaggedSequencePackager$PrefixUnpackResult;->consumed:I

    .line 261
    iput p3, p0, Lorg/jpos/tlv/packager/TaggedSequencePackager$PrefixUnpackResult;->subFieldId:I

    .line 262
    return-void
.end method


# virtual methods
.method public getConsumed()I
    .locals 1

    .line 265
    iget v0, p0, Lorg/jpos/tlv/packager/TaggedSequencePackager$PrefixUnpackResult;->consumed:I

    return v0
.end method

.method public getSubFieldId()I
    .locals 1

    .line 269
    iget v0, p0, Lorg/jpos/tlv/packager/TaggedSequencePackager$PrefixUnpackResult;->subFieldId:I

    return v0
.end method
