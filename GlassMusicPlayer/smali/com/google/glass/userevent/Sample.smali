.class public Lcom/google/glass/userevent/Sample;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private average:D

.field private lastValues:[D

.field private max:D

.field private min:D

.field private numSamples:I

.field private q:D

.field private wantAverage:Z

.field private wantMinMax:Z

.field private wantVariance:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p0, p1}, Lcom/google/glass/userevent/Sample;->keepLast(I)Lcom/google/glass/userevent/Sample;

    .line 63
    invoke-virtual {p0}, Lcom/google/glass/userevent/Sample;->reset()V

    .line 64
    return-void
.end method


# virtual methods
.method public getAverage()D
    .locals 2

    .prologue
    .line 181
    iget-wide v0, p0, Lcom/google/glass/userevent/Sample;->average:D

    return-wide v0
.end method

.method public getMax()D
    .locals 2

    .prologue
    .line 213
    iget-wide v0, p0, Lcom/google/glass/userevent/Sample;->max:D

    return-wide v0
.end method

.method public getMin()D
    .locals 2

    .prologue
    .line 220
    iget-wide v0, p0, Lcom/google/glass/userevent/Sample;->min:D

    return-wide v0
.end method

.method public getNumSamples()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/google/glass/userevent/Sample;->numSamples:I

    return v0
.end method

.method public getValues()[D
    .locals 6

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/glass/userevent/Sample;->lastValues:[D

    array-length v0, v0

    iget v1, p0, Lcom/google/glass/userevent/Sample;->numSamples:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 192
    new-array v2, v1, [D

    .line 195
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 196
    iget-object v3, p0, Lcom/google/glass/userevent/Sample;->lastValues:[D

    iget v4, p0, Lcom/google/glass/userevent/Sample;->numSamples:I

    sub-int/2addr v4, v0

    iget-object v5, p0, Lcom/google/glass/userevent/Sample;->lastValues:[D

    array-length v5, v5

    rem-int/2addr v4, v5

    aget-wide v3, v3, v4

    aput-wide v3, v2, v0

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_0
    return-object v2
.end method

.method public getVariance()D
    .locals 4

    .prologue
    .line 170
    iget v0, p0, Lcom/google/glass/userevent/Sample;->numSamples:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 171
    const-wide/16 v0, 0x0

    .line 173
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/glass/userevent/Sample;->q:D

    iget v2, p0, Lcom/google/glass/userevent/Sample;->numSamples:I

    add-int/lit8 v2, v2, -0x1

    int-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_0
.end method

.method public keepLast(I)Lcom/google/glass/userevent/Sample;
    .locals 1

    .prologue
    .line 72
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 73
    new-array v0, p1, [D

    iput-object v0, p0, Lcom/google/glass/userevent/Sample;->lastValues:[D

    .line 74
    return-object p0

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public record(D)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 126
    iget v0, p0, Lcom/google/glass/userevent/Sample;->numSamples:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/userevent/Sample;->numSamples:I

    .line 128
    iget-boolean v0, p0, Lcom/google/glass/userevent/Sample;->wantMinMax:Z

    if-eqz v0, :cond_1

    .line 129
    iget-wide v0, p0, Lcom/google/glass/userevent/Sample;->min:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 130
    iput-wide p1, p0, Lcom/google/glass/userevent/Sample;->min:D

    .line 132
    :cond_0
    iget-wide v0, p0, Lcom/google/glass/userevent/Sample;->max:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    .line 133
    iput-wide p1, p0, Lcom/google/glass/userevent/Sample;->max:D

    .line 137
    :cond_1
    iget-boolean v0, p0, Lcom/google/glass/userevent/Sample;->wantAverage:Z

    if-eqz v0, :cond_2

    .line 138
    iget-wide v0, p0, Lcom/google/glass/userevent/Sample;->average:D

    .line 139
    iget v2, p0, Lcom/google/glass/userevent/Sample;->numSamples:I

    if-ne v2, v6, :cond_4

    .line 140
    iput-wide p1, p0, Lcom/google/glass/userevent/Sample;->average:D

    .line 147
    :goto_0
    iget-boolean v2, p0, Lcom/google/glass/userevent/Sample;->wantVariance:Z

    if-eqz v2, :cond_2

    .line 148
    iget-wide v2, p0, Lcom/google/glass/userevent/Sample;->q:D

    .line 151
    iget v4, p0, Lcom/google/glass/userevent/Sample;->numSamples:I

    if-ne v4, v6, :cond_5

    .line 152
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/userevent/Sample;->q:D

    .line 161
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/glass/userevent/Sample;->lastValues:[D

    array-length v0, v0

    if-lez v0, :cond_3

    .line 162
    iget-object v0, p0, Lcom/google/glass/userevent/Sample;->lastValues:[D

    iget v1, p0, Lcom/google/glass/userevent/Sample;->numSamples:I

    iget-object v2, p0, Lcom/google/glass/userevent/Sample;->lastValues:[D

    array-length v2, v2

    rem-int/2addr v1, v2

    aput-wide p1, v0, v1

    .line 164
    :cond_3
    return-void

    .line 144
    :cond_4
    iget v2, p0, Lcom/google/glass/userevent/Sample;->numSamples:I

    add-int/lit8 v2, v2, -0x1

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/google/glass/userevent/Sample;->average:D

    mul-double/2addr v2, v4

    add-double/2addr v2, p1

    iget v4, p0, Lcom/google/glass/userevent/Sample;->numSamples:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/google/glass/userevent/Sample;->average:D

    goto :goto_0

    .line 156
    :cond_5
    sub-double v0, p1, v0

    iget-wide v4, p0, Lcom/google/glass/userevent/Sample;->average:D

    sub-double v4, p1, v4

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/glass/userevent/Sample;->q:D

    goto :goto_1
.end method

.method public record(F)V
    .locals 2

    .prologue
    .line 119
    float-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/userevent/Sample;->record(D)V

    .line 120
    return-void
.end method

.method public record(I)V
    .locals 2

    .prologue
    .line 105
    int-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/userevent/Sample;->record(D)V

    .line 106
    return-void
.end method

.method public record(J)V
    .locals 2

    .prologue
    .line 112
    long-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/userevent/Sample;->record(D)V

    .line 113
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 227
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/userevent/Sample;->numSamples:I

    .line 228
    iput-wide v1, p0, Lcom/google/glass/userevent/Sample;->average:D

    .line 229
    iput-wide v1, p0, Lcom/google/glass/userevent/Sample;->q:D

    .line 230
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Lcom/google/glass/userevent/Sample;->min:D

    .line 231
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/glass/userevent/Sample;->max:D

    .line 232
    return-void
.end method

.method public wantAverage()Lcom/google/glass/userevent/Sample;
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/userevent/Sample;->wantAverage:Z

    .line 82
    return-object p0
.end method

.method public wantMinMax()Lcom/google/glass/userevent/Sample;
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/userevent/Sample;->wantMinMax:Z

    .line 98
    return-object p0
.end method

.method public wantVariance()Lcom/google/glass/userevent/Sample;
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/userevent/Sample;->wantVariance:Z

    .line 90
    invoke-virtual {p0}, Lcom/google/glass/userevent/Sample;->wantAverage()Lcom/google/glass/userevent/Sample;

    move-result-object v0

    return-object v0
.end method
