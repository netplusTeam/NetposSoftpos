.class public final Lorg/apache/sshd/common/config/VersionProperties;
.super Ljava/lang/Object;
.source "VersionProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/common/config/VersionProperties$LazyVersionPropertiesHolder;
    }
.end annotation


# static fields
.field public static final REPORTED_VERSION:Ljava/lang/String; = "sshd-version"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getVersionProperties()Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 109
    invoke-static {}, Lorg/apache/sshd/common/config/VersionProperties$LazyVersionPropertiesHolder;->access$000()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method
