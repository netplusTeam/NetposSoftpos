.class public Lorg/xmlpull/v1/builder/impl/XmlCommentImpl;
.super Ljava/lang/Object;
.source "XmlCommentImpl.java"

# interfaces
.implements Lorg/xmlpull/v1/builder/XmlComment;


# instance fields
.field private content_:Ljava/lang/String;

.field private owner_:Lorg/xmlpull/v1/builder/XmlContainer;


# direct methods
.method constructor <init>(Lorg/xmlpull/v1/builder/XmlContainer;Ljava/lang/String;)V
    .locals 2
    .param p1, "owner"    # Lorg/xmlpull/v1/builder/XmlContainer;
    .param p2, "content"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/xmlpull/v1/builder/impl/XmlCommentImpl;->owner_:Lorg/xmlpull/v1/builder/XmlContainer;

    .line 17
    iput-object p2, p0, Lorg/xmlpull/v1/builder/impl/XmlCommentImpl;->content_:Ljava/lang/String;

    .line 18
    if-eqz p2, :cond_0

    .line 19
    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "comment content can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlCommentImpl;->content_:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lorg/xmlpull/v1/builder/XmlContainer;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/xmlpull/v1/builder/impl/XmlCommentImpl;->owner_:Lorg/xmlpull/v1/builder/XmlContainer;

    return-object v0
.end method
