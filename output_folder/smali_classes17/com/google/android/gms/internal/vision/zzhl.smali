.class final Lcom/google/android/gms/internal/vision/zzhl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-vision-common@@19.1.3"


# direct methods
.method static zza(I[BIILcom/google/android/gms/internal/vision/zzhn;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/vision/zzjk;
        }
    .end annotation

    .line 163
    nop

    .line 164
    ushr-int/lit8 v0, p0, 0x3

    .line 165
    if-eqz v0, :cond_2

    .line 167
    nop

    .line 168
    and-int/lit8 v0, p0, 0x7

    .line 169
    packed-switch v0, :pswitch_data_0

    .line 186
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzd()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p0

    throw p0

    .line 172
    :pswitch_1
    add-int/lit8 p2, p2, 0x4

    return p2

    .line 176
    :pswitch_2
    and-int/lit8 p0, p0, -0x8

    or-int/lit8 p0, p0, 0x4

    .line 177
    const/4 v0, 0x0

    .line 178
    :goto_0
    if-ge p2, p3, :cond_0

    .line 179
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result p2

    .line 180
    iget v0, p4, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    .line 181
    if-eq v0, p0, :cond_0

    .line 182
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/vision/zzhl;->zza(I[BIILcom/google/android/gms/internal/vision/zzhn;)I

    move-result p2

    goto :goto_0

    .line 183
    :cond_0
    if-gt p2, p3, :cond_1

    if-ne v0, p0, :cond_1

    .line 185
    return p2

    .line 184
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzg()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p0

    throw p0

    .line 174
    :pswitch_3
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result p0

    .line 175
    iget p1, p4, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    add-int/2addr p0, p1

    return p0

    .line 173
    :pswitch_4
    add-int/lit8 p2, p2, 0x8

    return p2

    .line 170
    :pswitch_5
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/vision/zzhl;->zzb([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result p0

    .line 171
    return p0

    .line 166
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzd()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static zza(I[BIILcom/google/android/gms/internal/vision/zzjl;Lcom/google/android/gms/internal/vision/zzhn;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/android/gms/internal/vision/zzjl<",
            "*>;",
            "Lcom/google/android/gms/internal/vision/zzhn;",
            ")I"
        }
    .end annotation

    .line 97
    check-cast p4, Lcom/google/android/gms/internal/vision/zzjd;

    .line 98
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result p2

    .line 99
    iget v0, p5, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/vision/zzjd;->zzc(I)V

    .line 100
    :goto_0
    if-ge p2, p3, :cond_0

    .line 101
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    .line 102
    iget v1, p5, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    if-ne p0, v1, :cond_0

    .line 103
    invoke-static {p1, v0, p5}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result p2

    .line 104
    iget v0, p5, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/vision/zzjd;->zzc(I)V

    .line 105
    goto :goto_0

    .line 106
    :cond_0
    return p2
.end method

.method static zza(I[BIILcom/google/android/gms/internal/vision/zzlx;Lcom/google/android/gms/internal/vision/zzhn;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/vision/zzjk;
        }
    .end annotation

    .line 126
    nop

    .line 127
    ushr-int/lit8 v0, p0, 0x3

    .line 128
    if-eqz v0, :cond_6

    .line 130
    nop

    .line 131
    and-int/lit8 v0, p0, 0x7

    .line 132
    packed-switch v0, :pswitch_data_0

    .line 162
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzd()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p0

    throw p0

    .line 136
    :pswitch_1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/vision/zzlx;->zza(ILjava/lang/Object;)V

    .line 137
    add-int/lit8 p2, p2, 0x4

    return p2

    .line 150
    :pswitch_2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzlx;->zzb()Lcom/google/android/gms/internal/vision/zzlx;

    move-result-object v6

    .line 151
    and-int/lit8 v0, p0, -0x8

    or-int/lit8 v7, v0, 0x4

    .line 152
    const/4 v0, 0x0

    .line 153
    :goto_0
    if-ge p2, p3, :cond_1

    .line 154
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v2

    .line 155
    iget p2, p5, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    .line 156
    if-eq p2, v7, :cond_0

    .line 157
    move v0, p2

    move-object v1, p1

    move v3, p3

    move-object v4, v6

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/zzhl;->zza(I[BIILcom/google/android/gms/internal/vision/zzlx;Lcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    move v8, v0

    move v0, p2

    move p2, v8

    goto :goto_0

    .line 156
    :cond_0
    move v0, p2

    move p2, v2

    .line 158
    :cond_1
    if-gt p2, p3, :cond_2

    if-ne v0, v7, :cond_2

    .line 160
    invoke-virtual {p4, p0, v6}, Lcom/google/android/gms/internal/vision/zzlx;->zza(ILjava/lang/Object;)V

    .line 161
    return p2

    .line 159
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzg()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p0

    throw p0

    .line 140
    :pswitch_3
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result p2

    .line 141
    iget p3, p5, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    .line 142
    if-ltz p3, :cond_5

    .line 144
    array-length p5, p1

    sub-int/2addr p5, p2

    if-gt p3, p5, :cond_4

    .line 146
    if-nez p3, :cond_3

    .line 147
    sget-object p1, Lcom/google/android/gms/internal/vision/zzht;->zza:Lcom/google/android/gms/internal/vision/zzht;

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/vision/zzlx;->zza(ILjava/lang/Object;)V

    goto :goto_1

    .line 148
    :cond_3
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/vision/zzht;->zza([BII)Lcom/google/android/gms/internal/vision/zzht;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/vision/zzlx;->zza(ILjava/lang/Object;)V

    .line 149
    :goto_1
    add-int/2addr p2, p3

    return p2

    .line 145
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zza()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p0

    throw p0

    .line 143
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzb()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p0

    throw p0

    .line 138
    :pswitch_4
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/vision/zzhl;->zzb([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/vision/zzlx;->zza(ILjava/lang/Object;)V

    .line 139
    add-int/lit8 p2, p2, 0x8

    return p2

    .line 133
    :pswitch_5
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/vision/zzhl;->zzb([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result p1

    .line 134
    iget-wide p2, p5, Lcom/google/android/gms/internal/vision/zzhn;->zzb:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p0, p2}, Lcom/google/android/gms/internal/vision/zzlx;->zza(ILjava/lang/Object;)V

    .line 135
    return p1

    .line 129
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzd()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static zza(I[BILcom/google/android/gms/internal/vision/zzhn;)I
    .locals 1

    .line 6
    and-int/lit8 p0, p0, 0x7f

    .line 7
    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    .line 8
    if-ltz p2, :cond_0

    .line 9
    shl-int/lit8 p1, p2, 0x7

    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    .line 10
    return v0

    .line 11
    :cond_0
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x7

    or-int/2addr p0, p2

    .line 12
    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p1, v0

    .line 13
    if-ltz v0, :cond_1

    .line 14
    shl-int/lit8 p1, v0, 0xe

    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    .line 15
    return p2

    .line 16
    :cond_1
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr p0, v0

    .line 17
    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    .line 18
    if-ltz p2, :cond_2

    .line 19
    shl-int/lit8 p1, p2, 0x15

    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    .line 20
    return v0

    .line 21
    :cond_2
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x15

    or-int/2addr p0, p2

    .line 22
    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p1, v0

    .line 23
    if-ltz v0, :cond_3

    .line 24
    shl-int/lit8 p1, v0, 0x1c

    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    .line 25
    return p2

    .line 26
    :cond_3
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr p0, v0

    .line 27
    :goto_0
    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-ltz p2, :cond_4

    .line 28
    iput p0, p3, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    .line 29
    return v0

    .line 27
    :cond_4
    move p2, v0

    goto :goto_0
.end method

.method static zza(Lcom/google/android/gms/internal/vision/zzlc;I[BIILcom/google/android/gms/internal/vision/zzjl;Lcom/google/android/gms/internal/vision/zzhn;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vision/zzlc<",
            "*>;I[BII",
            "Lcom/google/android/gms/internal/vision/zzjl<",
            "*>;",
            "Lcom/google/android/gms/internal/vision/zzhn;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    nop

    .line 117
    invoke-static {p0, p2, p3, p4, p6}, Lcom/google/android/gms/internal/vision/zzhl;->zza(Lcom/google/android/gms/internal/vision/zzlc;[BIILcom/google/android/gms/internal/vision/zzhn;)I

    move-result p3

    .line 118
    iget-object v0, p6, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    invoke-interface {p5, v0}, Lcom/google/android/gms/internal/vision/zzjl;->add(Ljava/lang/Object;)Z

    .line 119
    :goto_0
    if-ge p3, p4, :cond_0

    .line 120
    invoke-static {p2, p3, p6}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    .line 121
    iget v1, p6, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    if-ne p1, v1, :cond_0

    .line 122
    invoke-static {p0, p2, v0, p4, p6}, Lcom/google/android/gms/internal/vision/zzhl;->zza(Lcom/google/android/gms/internal/vision/zzlc;[BIILcom/google/android/gms/internal/vision/zzhn;)I

    move-result p3

    .line 123
    iget-object v0, p6, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    invoke-interface {p5, v0}, Lcom/google/android/gms/internal/vision/zzjl;->add(Ljava/lang/Object;)Z

    .line 124
    goto :goto_0

    .line 125
    :cond_0
    return p3
.end method

.method static zza(Lcom/google/android/gms/internal/vision/zzlc;[BIIILcom/google/android/gms/internal/vision/zzhn;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    check-cast p0, Lcom/google/android/gms/internal/vision/zzko;

    .line 91
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzko;->zza()Ljava/lang/Object;

    move-result-object v7

    .line 92
    nop

    .line 93
    move-object v0, p0

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/vision/zzhn;)I

    move-result p1

    .line 94
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/vision/zzko;->zzc(Ljava/lang/Object;)V

    .line 95
    iput-object v7, p5, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    .line 96
    return p1
.end method

.method static zza(Lcom/google/android/gms/internal/vision/zzlc;[BIILcom/google/android/gms/internal/vision/zzhn;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    .line 80
    if-gez p2, :cond_0

    .line 81
    invoke-static {p2, p1, v0, p4}, Lcom/google/android/gms/internal/vision/zzhl;->zza(I[BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    .line 82
    iget p2, p4, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    move v3, v0

    goto :goto_0

    .line 80
    :cond_0
    move v3, v0

    .line 83
    :goto_0
    if-ltz p2, :cond_1

    sub-int/2addr p3, v3

    if-gt p2, p3, :cond_1

    .line 85
    invoke-interface {p0}, Lcom/google/android/gms/internal/vision/zzlc;->zza()Ljava/lang/Object;

    move-result-object p3

    .line 86
    add-int/2addr p2, v3

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move v4, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/zzlc;->zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/vision/zzhn;)V

    .line 87
    invoke-interface {p0, p3}, Lcom/google/android/gms/internal/vision/zzlc;->zzc(Ljava/lang/Object;)V

    .line 88
    iput-object p3, p4, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    .line 89
    return p2

    .line 84
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zza()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p0

    throw p0
.end method

.method static zza([BI)I
    .locals 2

    .line 46
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method static zza([BILcom/google/android/gms/internal/vision/zzhn;)I
    .locals 1

    .line 1
    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    .line 2
    if-ltz p1, :cond_0

    .line 3
    iput p1, p2, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {p1, p0, v0, p2}, Lcom/google/android/gms/internal/vision/zzhl;->zza(I[BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result p0

    return p0
.end method

.method static zza([BILcom/google/android/gms/internal/vision/zzjl;Lcom/google/android/gms/internal/vision/zzhn;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/android/gms/internal/vision/zzjl<",
            "*>;",
            "Lcom/google/android/gms/internal/vision/zzhn;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    check-cast p2, Lcom/google/android/gms/internal/vision/zzjd;

    .line 108
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result p1

    .line 109
    iget v0, p3, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    add-int/2addr v0, p1

    .line 110
    :goto_0
    if-ge p1, v0, :cond_0

    .line 111
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result p1

    .line 112
    iget v1, p3, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/vision/zzjd;->zzc(I)V

    goto :goto_0

    .line 113
    :cond_0
    if-ne p1, v0, :cond_1

    .line 115
    return p1

    .line 114
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zza()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p0

    throw p0
.end method

.method static zzb([BILcom/google/android/gms/internal/vision/zzhn;)I
    .locals 9

    .line 30
    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    int-to-long v1, p1

    .line 31
    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-ltz p1, :cond_0

    .line 32
    iput-wide v1, p2, Lcom/google/android/gms/internal/vision/zzhn;->zzb:J

    .line 33
    return v0

    .line 34
    :cond_0
    nop

    .line 35
    const-wide/16 v3, 0x7f

    and-long/2addr v1, v3

    .line 36
    add-int/lit8 p1, v0, 0x1

    aget-byte v0, p0, v0

    .line 37
    nop

    .line 38
    and-int/lit8 v3, v0, 0x7f

    int-to-long v3, v3

    const/4 v5, 0x7

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    move v3, v5

    .line 39
    :goto_0
    if-gez v0, :cond_1

    .line 40
    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    .line 41
    add-int/2addr v3, v5

    .line 42
    and-int/lit8 v4, p1, 0x7f

    int-to-long v6, v4

    shl-long/2addr v6, v3

    or-long/2addr v1, v6

    move v8, v0

    move v0, p1

    move p1, v8

    goto :goto_0

    .line 43
    :cond_1
    iput-wide v1, p2, Lcom/google/android/gms/internal/vision/zzhn;->zzb:J

    .line 44
    nop

    .line 45
    return p1
.end method

.method static zzb([BI)J
    .locals 7

    .line 47
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x7

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    const/16 v2, 0x38

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method static zzc([BI)D
    .locals 0

    .line 48
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzhl;->zzb([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method static zzc([BILcom/google/android/gms/internal/vision/zzhn;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/vision/zzjk;
        }
    .end annotation

    .line 50
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result p1

    .line 51
    iget v0, p2, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    .line 52
    if-ltz v0, :cond_1

    .line 54
    if-nez v0, :cond_0

    .line 55
    const-string p0, ""

    iput-object p0, p2, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    .line 56
    return p1

    .line 57
    :cond_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/vision/zzjf;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v1, p2, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    .line 58
    add-int/2addr p1, v0

    return p1

    .line 53
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzb()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p0

    throw p0
.end method

.method static zzd([BI)F
    .locals 0

    .line 49
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method static zzd([BILcom/google/android/gms/internal/vision/zzhn;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/vision/zzjk;
        }
    .end annotation

    .line 59
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result p1

    .line 60
    iget v0, p2, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    .line 61
    if-ltz v0, :cond_1

    .line 63
    if-nez v0, :cond_0

    .line 64
    const-string p0, ""

    iput-object p0, p2, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    .line 65
    return p1

    .line 66
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzmd;->zzb([BII)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    .line 67
    add-int/2addr p1, v0

    return p1

    .line 62
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzb()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p0

    throw p0
.end method

.method static zze([BILcom/google/android/gms/internal/vision/zzhn;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/vision/zzjk;
        }
    .end annotation

    .line 68
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result p1

    .line 69
    iget v0, p2, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    .line 70
    if-ltz v0, :cond_2

    .line 72
    array-length v1, p0

    sub-int/2addr v1, p1

    if-gt v0, v1, :cond_1

    .line 74
    if-nez v0, :cond_0

    .line 75
    sget-object p0, Lcom/google/android/gms/internal/vision/zzht;->zza:Lcom/google/android/gms/internal/vision/zzht;

    iput-object p0, p2, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    .line 76
    return p1

    .line 77
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzht;->zza([BII)Lcom/google/android/gms/internal/vision/zzht;

    move-result-object p0

    iput-object p0, p2, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    .line 78
    add-int/2addr p1, v0

    return p1

    .line 73
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zza()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p0

    throw p0

    .line 71
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzb()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p0

    throw p0
.end method
