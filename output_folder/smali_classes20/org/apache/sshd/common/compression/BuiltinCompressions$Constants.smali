.class public final Lorg/apache/sshd/common/compression/BuiltinCompressions$Constants;
.super Ljava/lang/Object;
.source "BuiltinCompressions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/compression/BuiltinCompressions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Constants"
.end annotation


# static fields
.field public static final DELAYED_ZLIB:Ljava/lang/String; = "zlib@openssh.com"

.field public static final NONE:Ljava/lang/String; = "none"

.field public static final ZLIB:Ljava/lang/String; = "zlib"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
