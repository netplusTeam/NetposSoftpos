.class public Lorg/apache/sshd/common/util/VersionInfo;
.super Ljava/lang/Object;
.source "VersionInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/sshd/common/util/VersionInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7eab54e9a297d18cL


# instance fields
.field private final buildNumber:I

.field private final majorVersion:I

.field private final minorVersion:I

.field private final release:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "major"    # I
    .param p2, "minor"    # I

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/apache/sshd/common/util/VersionInfo;-><init>(IIII)V

    .line 37
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "major"    # I
    .param p2, "minor"    # I
    .param p3, "release"    # I
    .param p4, "build"    # I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lorg/apache/sshd/common/util/VersionInfo;->majorVersion:I

    .line 41
    iput p2, p0, Lorg/apache/sshd/common/util/VersionInfo;->minorVersion:I

    .line 42
    iput p3, p0, Lorg/apache/sshd/common/util/VersionInfo;->release:I

    .line 43
    iput p4, p0, Lorg/apache/sshd/common/util/VersionInfo;->buildNumber:I

    .line 44
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/apache/sshd/common/util/VersionInfo;
    .locals 8
    .param p0, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 121
    const/16 v0, 0x2e

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/GenericUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "comps":[Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    const/4 v1, 0x0

    return-object v1

    .line 126
    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 127
    .local v1, "values":[I
    array-length v2, v0

    array-length v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 128
    .local v2, "maxValues":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v3, v2, :cond_2

    .line 129
    aget-object v6, v0, v3

    .line 130
    .local v6, "c":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 131
    .local v7, "v":I
    if-ltz v7, :cond_1

    move v4, v5

    :cond_1
    const-string v5, "Invalid version component in %s"

    invoke-static {v4, v5, p0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 132
    aput v7, v1, v3

    .line 128
    .end local v6    # "c":Ljava/lang/String;
    .end local v7    # "v":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 135
    .end local v3    # "index":I
    :cond_2
    new-instance v3, Lorg/apache/sshd/common/util/VersionInfo;

    aget v4, v1, v4

    aget v5, v1, v5

    const/4 v6, 0x2

    aget v6, v1, v6

    const/4 v7, 0x3

    aget v7, v1, v7

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/apache/sshd/common/util/VersionInfo;-><init>(IIII)V

    return-object v3
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 27
    check-cast p1, Lorg/apache/sshd/common/util/VersionInfo;

    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/util/VersionInfo;->compareTo(Lorg/apache/sshd/common/util/VersionInfo;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/sshd/common/util/VersionInfo;)I
    .locals 3
    .param p1, "o"    # Lorg/apache/sshd/common/util/VersionInfo;

    .line 83
    if-nez p1, :cond_0

    .line 84
    const/4 v0, -0x1

    return v0

    .line 86
    :cond_0
    if-ne p1, p0, :cond_1

    .line 87
    const/4 v0, 0x0

    return v0

    .line 90
    :cond_1
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/VersionInfo;->getMajorVersion()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/VersionInfo;->getMajorVersion()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 91
    .local v0, "nRes":I
    if-nez v0, :cond_2

    .line 92
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/VersionInfo;->getMinorVersion()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/VersionInfo;->getMinorVersion()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 94
    :cond_2
    if-nez v0, :cond_3

    .line 95
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/VersionInfo;->getRelease()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/VersionInfo;->getRelease()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 97
    :cond_3
    if-nez v0, :cond_4

    .line 98
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/VersionInfo;->getBuildNumber()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/VersionInfo;->getBuildNumber()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 101
    :cond_4
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 69
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 70
    return v0

    .line 72
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 73
    return v1

    .line 75
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 76
    return v0

    .line 78
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/apache/sshd/common/util/VersionInfo;

    invoke-virtual {p0, v2}, Lorg/apache/sshd/common/util/VersionInfo;->compareTo(Lorg/apache/sshd/common/util/VersionInfo;)I

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public final getBuildNumber()I
    .locals 1

    .line 59
    iget v0, p0, Lorg/apache/sshd/common/util/VersionInfo;->buildNumber:I

    return v0
.end method

.method public final getMajorVersion()I
    .locals 1

    .line 47
    iget v0, p0, Lorg/apache/sshd/common/util/VersionInfo;->majorVersion:I

    return v0
.end method

.method public final getMinorVersion()I
    .locals 1

    .line 51
    iget v0, p0, Lorg/apache/sshd/common/util/VersionInfo;->minorVersion:I

    return v0
.end method

.method public final getRelease()I
    .locals 1

    .line 55
    iget v0, p0, Lorg/apache/sshd/common/util/VersionInfo;->release:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 64
    const/4 v0, 0x4

    new-array v0, v0, [I

    invoke-virtual {p0}, Lorg/apache/sshd/common/util/VersionInfo;->getMajorVersion()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0}, Lorg/apache/sshd/common/util/VersionInfo;->getMinorVersion()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-virtual {p0}, Lorg/apache/sshd/common/util/VersionInfo;->getRelease()I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    invoke-virtual {p0}, Lorg/apache/sshd/common/util/VersionInfo;->getBuildNumber()I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    invoke-static {v0}, Lorg/apache/sshd/common/util/NumberUtils;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 106
    const/4 v0, 0x4

    new-array v0, v0, [I

    invoke-virtual {p0}, Lorg/apache/sshd/common/util/VersionInfo;->getMajorVersion()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0}, Lorg/apache/sshd/common/util/VersionInfo;->getMinorVersion()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-virtual {p0}, Lorg/apache/sshd/common/util/VersionInfo;->getRelease()I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    invoke-virtual {p0}, Lorg/apache/sshd/common/util/VersionInfo;->getBuildNumber()I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    const/16 v1, 0x2e

    invoke-static {v1, v0}, Lorg/apache/sshd/common/util/NumberUtils;->join(C[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
