.class final Lcom/auth0/jwt/ClockImpl;
.super Ljava/lang/Object;
.source "ClockImpl.java"

# interfaces
.implements Lcom/auth0/jwt/interfaces/Clock;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public getToday()Ljava/util/Date;
    .locals 1

    .line 14
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method
