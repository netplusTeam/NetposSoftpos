.class public Lcom/sleepycat/je/rep/elections/Protocol$StringValue;
.super Lcom/sleepycat/je/rep/impl/TextProtocol$StringFormatable;
.source "Protocol.java"

# interfaces
.implements Lcom/sleepycat/je/rep/elections/Protocol$Value;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/elections/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringValue"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 764
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/impl/TextProtocol$StringFormatable;-><init>(Ljava/lang/String;)V

    .line 765
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 768
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/impl/TextProtocol$StringFormatable;-><init>(Ljava/lang/String;)V

    .line 769
    return-void
.end method


# virtual methods
.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    .line 761
    invoke-super {p0, p1}, Lcom/sleepycat/je/rep/impl/TextProtocol$StringFormatable;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 777
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Protocol$StringValue;->s:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .line 761
    invoke-super {p0}, Lcom/sleepycat/je/rep/impl/TextProtocol$StringFormatable;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic init(Ljava/lang/String;)V
    .locals 0

    .line 761
    invoke-super {p0, p1}, Lcom/sleepycat/je/rep/impl/TextProtocol$StringFormatable;->init(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Protocol$StringValue;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic wireFormat()Ljava/lang/String;
    .locals 1

    .line 761
    invoke-super {p0}, Lcom/sleepycat/je/rep/impl/TextProtocol$StringFormatable;->wireFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
