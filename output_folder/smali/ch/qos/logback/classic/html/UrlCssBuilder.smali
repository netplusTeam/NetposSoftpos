.class public Lch/qos/logback/classic/html/UrlCssBuilder;
.super Ljava/lang/Object;
.source "UrlCssBuilder.java"

# interfaces
.implements Lch/qos/logback/core/html/CssBuilder;


# instance fields
.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "http://logback.qos.ch/css/classic.css"

    iput-object v0, p0, Lch/qos/logback/classic/html/UrlCssBuilder;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addCss(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sbuf"    # Ljava/lang/StringBuilder;

    .line 38
    const-string v0, "<link REL=StyleSheet HREF=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v0, p0, Lch/qos/logback/classic/html/UrlCssBuilder;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v0, "\" TITLE=\"Basic\" />"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    return-void
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lch/qos/logback/classic/html/UrlCssBuilder;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lch/qos/logback/classic/html/UrlCssBuilder;->url:Ljava/lang/String;

    .line 35
    return-void
.end method
