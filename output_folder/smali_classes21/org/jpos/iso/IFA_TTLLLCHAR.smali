.class public Lorg/jpos/iso/IFA_TTLLLCHAR;
.super Lorg/jpos/iso/TaggedFieldPackagerBase;
.source "IFA_TTLLLCHAR.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lorg/jpos/iso/TaggedFieldPackagerBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDelegate(ILjava/lang/String;)Lorg/jpos/iso/ISOFieldPackager;
    .locals 1
    .param p1, "length"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 33
    new-instance v0, Lorg/jpos/iso/IFA_LLLCHAR;

    invoke-direct {v0, p1, p2}, Lorg/jpos/iso/IFA_LLLCHAR;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method protected getTagNameLength()I
    .locals 1

    .line 29
    const/4 v0, 0x2

    return v0
.end method
