/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strrchar.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tdharmar <tdharmar@student.42bangkok.co    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/06/16 15:13:55 by tdharmar          #+#    #+#             */
/*   Updated: 2025/06/16 15:13:55 by tdharmar         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strrchr(const char *s, int c)
{
	const char		*last;
	unsigned char	ch;

	ch = (unsigned char)c;
	last = NULL;
	while (*s)
	{
		if ((unsigned char)*s == ch)
			last = s;
		s++;
	}
	if ((unsigned char)*s == ch)
		last = s;
	return ((char *)last);
}
