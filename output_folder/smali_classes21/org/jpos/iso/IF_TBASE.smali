.class public abstract Lorg/jpos/iso/IF_TBASE;
.super Lorg/jpos/iso/ISOFieldPackager;
.source "IF_TBASE.java"

# interfaces
.implements Lorg/jpos/iso/TaggedFieldPackager;


# instance fields
.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lorg/jpos/iso/ISOFieldPackager;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/IF_TBASE;->token:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "len"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/ISOFieldPackager;-><init>(ILjava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "len"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/ISOFieldPackager;-><init>(ILjava/lang/String;)V

    .line 49
    iput-object p3, p0, Lorg/jpos/iso/IF_TBASE;->token:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/jpos/iso/IF_TBASE;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lorg/jpos/iso/IF_TBASE;->token:Ljava/lang/String;

    .line 54
    return-void
.end method
