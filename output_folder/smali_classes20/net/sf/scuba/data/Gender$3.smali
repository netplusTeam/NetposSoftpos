.class final enum Lnet/sf/scuba/data/Gender$3;
.super Lnet/sf/scuba/data/Gender;
.source "Gender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/scuba/data/Gender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/sf/scuba/data/Gender;-><init>(Ljava/lang/String;ILnet/sf/scuba/data/Gender$1;)V

    return-void
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .line 50
    const/16 v0, 0xff

    return v0
.end method
