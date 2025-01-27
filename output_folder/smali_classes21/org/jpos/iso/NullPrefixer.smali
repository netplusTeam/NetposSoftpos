.class public Lorg/jpos/iso/NullPrefixer;
.super Ljava/lang/Object;
.source "NullPrefixer.java"

# interfaces
.implements Lorg/jpos/iso/Prefixer;


# static fields
.field public static final INSTANCE:Lorg/jpos/iso/NullPrefixer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lorg/jpos/iso/NullPrefixer;

    invoke-direct {v0}, Lorg/jpos/iso/NullPrefixer;-><init>()V

    sput-object v0, Lorg/jpos/iso/NullPrefixer;->INSTANCE:Lorg/jpos/iso/NullPrefixer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decodeLength([BI)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "offset"    # I

    .line 45
    const/4 v0, -0x1

    return v0
.end method

.method public encodeLength(I[B)V
    .locals 0
    .param p1, "length"    # I
    .param p2, "b"    # [B

    .line 36
    return-void
.end method

.method public getPackedLength()I
    .locals 1

    .line 51
    const/4 v0, 0x0

    return v0
.end method
