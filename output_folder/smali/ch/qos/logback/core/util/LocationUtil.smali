.class public Lch/qos/logback/core/util/LocationUtil;
.super Ljava/lang/Object;
.source "LocationUtil.java"


# static fields
.field public static final CLASSPATH_SCHEME:Ljava/lang/String; = "classpath:"

.field public static final SCHEME_PATTERN:Ljava/lang/String; = "^\\p{Alpha}[\\p{Alnum}+.-]*:.*$"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static urlForResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 4
    .param p0, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 45
    if-eqz p0, :cond_5

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "url":Ljava/net/URL;
    const-string v1, "^\\p{Alpha}[\\p{Alnum}+.-]*:.*$"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    invoke-static {p0}, Lch/qos/logback/core/util/Loader;->getResourceBySelfClassLoader(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    goto :goto_0

    .line 51
    :cond_0
    const-string v1, "classpath:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 52
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "path":Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 56
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 59
    invoke-static {v1}, Lch/qos/logback/core/util/Loader;->getResourceBySelfClassLoader(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 60
    .end local v1    # "path":Ljava/lang/String;
    goto :goto_0

    .line 57
    .restart local v1    # "path":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/net/MalformedURLException;

    const-string/jumbo v3, "path is required"

    invoke-direct {v2, v3}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    .end local v1    # "path":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 63
    :goto_0
    if-eqz v0, :cond_4

    .line 66
    return-object v0

    .line 64
    :cond_4
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    .end local v0    # "url":Ljava/net/URL;
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "location is required"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
