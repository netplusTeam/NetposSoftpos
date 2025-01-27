.class public interface abstract Lorg/xmlpull/v1/builder/XmlPullElement;
.super Ljava/lang/Object;
.source "XmlPullElement.java"

# interfaces
.implements Lorg/xmlpull/v1/builder/XmlElement;


# virtual methods
.method public abstract children()Ljava/util/Iterator;
.end method

.method public abstract fullyConstructed()Z
.end method

.method public abstract nextChildAsPullParser()Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public abstract readNextChild()Lorg/xmlpull/v1/builder/XmlPullElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract skipNextChild()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
