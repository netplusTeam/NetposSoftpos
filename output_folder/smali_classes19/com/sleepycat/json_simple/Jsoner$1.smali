.class final Lcom/sleepycat/json_simple/Jsoner$1;
.super Ljava/lang/Object;
.source "Jsoner.java"

# interfaces
.implements Lcom/sleepycat/json_simple/JsonKey;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/json_simple/Jsoner;->mintJsonKey(Ljava/lang/String;Ljava/lang/Object;)Lcom/sleepycat/json_simple/JsonKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lcom/sleepycat/json_simple/Jsoner$1;->val$key:Ljava/lang/String;

    iput-object p2, p0, Lcom/sleepycat/json_simple/Jsoner$1;->val$value:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/sleepycat/json_simple/Jsoner$1;->val$key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/sleepycat/json_simple/Jsoner$1;->val$value:Ljava/lang/Object;

    return-object v0
.end method
