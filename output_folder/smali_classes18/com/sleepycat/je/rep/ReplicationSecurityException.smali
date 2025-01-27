.class public Lcom/sleepycat/je/rep/ReplicationSecurityException;
.super Lcom/sleepycat/je/DatabaseException;
.source "ReplicationSecurityException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final consumer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "consumer"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 50
    invoke-direct {p0, p1, p3}, Lcom/sleepycat/je/DatabaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    iput-object p2, p0, Lcom/sleepycat/je/rep/ReplicationSecurityException;->consumer:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public getConsumer()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationSecurityException;->consumer:Ljava/lang/String;

    return-object v0
.end method
