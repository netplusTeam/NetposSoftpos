.class public Lch/qos/logback/core/util/DynamicClassLoadingException;
.super Ljava/lang/Exception;
.source "DynamicClassLoadingException.java"


# static fields
.field private static final serialVersionUID:J = 0x44dd8df54ee7da52L


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "root"    # Ljava/lang/Throwable;

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    return-void
.end method
