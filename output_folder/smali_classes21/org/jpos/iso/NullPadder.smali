.class public Lorg/jpos/iso/NullPadder;
.super Ljava/lang/Object;
.source "NullPadder.java"

# interfaces
.implements Lorg/jpos/iso/Padder;


# static fields
.field public static final INSTANCE:Lorg/jpos/iso/NullPadder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lorg/jpos/iso/NullPadder;

    invoke-direct {v0}, Lorg/jpos/iso/NullPadder;-><init>()V

    sput-object v0, Lorg/jpos/iso/NullPadder;->INSTANCE:Lorg/jpos/iso/NullPadder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pad(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "maxLength"    # I

    .line 37
    return-object p1
.end method

.method public unpad(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "paddedData"    # Ljava/lang/String;

    .line 46
    return-object p1
.end method
