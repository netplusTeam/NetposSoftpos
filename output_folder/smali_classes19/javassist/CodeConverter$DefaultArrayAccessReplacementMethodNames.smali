.class public Ljavassist/CodeConverter$DefaultArrayAccessReplacementMethodNames;
.super Ljava/lang/Object;
.source "CodeConverter.java"

# interfaces
.implements Ljavassist/CodeConverter$ArrayAccessReplacementMethodNames;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/CodeConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultArrayAccessReplacementMethodNames"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public byteOrBooleanRead()Ljava/lang/String;
    .locals 1

    .line 722
    const-string v0, "arrayReadByteOrBoolean"

    return-object v0
.end method

.method public byteOrBooleanWrite()Ljava/lang/String;
    .locals 1

    .line 732
    const-string v0, "arrayWriteByteOrBoolean"

    return-object v0
.end method

.method public charRead()Ljava/lang/String;
    .locals 1

    .line 742
    const-string v0, "arrayReadChar"

    return-object v0
.end method

.method public charWrite()Ljava/lang/String;
    .locals 1

    .line 752
    const-string v0, "arrayWriteChar"

    return-object v0
.end method

.method public doubleRead()Ljava/lang/String;
    .locals 1

    .line 762
    const-string v0, "arrayReadDouble"

    return-object v0
.end method

.method public doubleWrite()Ljava/lang/String;
    .locals 1

    .line 772
    const-string v0, "arrayWriteDouble"

    return-object v0
.end method

.method public floatRead()Ljava/lang/String;
    .locals 1

    .line 782
    const-string v0, "arrayReadFloat"

    return-object v0
.end method

.method public floatWrite()Ljava/lang/String;
    .locals 1

    .line 792
    const-string v0, "arrayWriteFloat"

    return-object v0
.end method

.method public intRead()Ljava/lang/String;
    .locals 1

    .line 802
    const-string v0, "arrayReadInt"

    return-object v0
.end method

.method public intWrite()Ljava/lang/String;
    .locals 1

    .line 812
    const-string v0, "arrayWriteInt"

    return-object v0
.end method

.method public longRead()Ljava/lang/String;
    .locals 1

    .line 822
    const-string v0, "arrayReadLong"

    return-object v0
.end method

.method public longWrite()Ljava/lang/String;
    .locals 1

    .line 832
    const-string v0, "arrayWriteLong"

    return-object v0
.end method

.method public objectRead()Ljava/lang/String;
    .locals 1

    .line 842
    const-string v0, "arrayReadObject"

    return-object v0
.end method

.method public objectWrite()Ljava/lang/String;
    .locals 1

    .line 852
    const-string v0, "arrayWriteObject"

    return-object v0
.end method

.method public shortRead()Ljava/lang/String;
    .locals 1

    .line 862
    const-string v0, "arrayReadShort"

    return-object v0
.end method

.method public shortWrite()Ljava/lang/String;
    .locals 1

    .line 872
    const-string v0, "arrayWriteShort"

    return-object v0
.end method
