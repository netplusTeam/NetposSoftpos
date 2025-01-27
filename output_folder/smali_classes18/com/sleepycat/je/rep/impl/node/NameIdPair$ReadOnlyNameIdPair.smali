.class Lcom/sleepycat/je/rep/impl/node/NameIdPair$ReadOnlyNameIdPair;
.super Lcom/sleepycat/je/rep/impl/node/NameIdPair;
.source "NameIdPair.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/node/NameIdPair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReadOnlyNameIdPair"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 196
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;-><init>(Ljava/lang/String;I)V

    .line 197
    return-void
.end method


# virtual methods
.method public setId(I)V
    .locals 1
    .param p1, "id"    # I

    .line 201
    nop

    .line 202
    const-string v0, "Read only NameIdPair"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method
